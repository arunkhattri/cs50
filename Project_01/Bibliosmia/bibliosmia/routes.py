# pylint: disable=C0111, unused-import, invalid-name
# pylint: disable=wrong-import-order, W0622, no-member
# pylint: disable=no-else-return, redefined-outer-name
import secrets
import os
import requests
# import json
import random
from PIL import Image
from flask import render_template, url_for, flash, redirect, request
from bibliosmia import app, db, bcrypt
from bibliosmia.forms import RegistrationForm, LoginForm, SearchForm
from bibliosmia.forms import UpdateAccountForm, ReviewForm
from bibliosmia.models import User, Books, Authors, Years, Review
from flask_login import login_user, current_user, logout_user, login_required
from config import Config

KEY = Config.KEY


def get_trivia():
    t_file = "./bibliosmia/trivia.txt"
    with open(t_file) as f:
        data = f.read()
        paragraphs = data.split("\n\n")
    num = random.randint(0, len(paragraphs)-1)
    para = paragraphs[num]
    return para


@app.route('/')
def home():
    trivia = get_trivia()
    return render_template('home.html', trivia=trivia)


@app.route('/search', methods=['GET', 'POST'])
@login_required
def search():
    trivia = get_trivia()
    search = SearchForm()
    if request.method == "POST":
        return books(search)
    return render_template('search.html',
                           title='Search',
                           form=search,
                           trivia=trivia)


# function for query result to be used in books route
def query_string(criteria, search_str):
    results = []
    if criteria == 'isbn':
        res = Books.query.filter(Books.isbn.like("%"+search_str+"%")).all()
        for r in res:
            id = r.id
            bk = Books.query.get(id)
            auth_id = bk.author_id
            auth_q = Authors.query.get(auth_id)
            auth_n = auth_q.name
            results.append((auth_n, r.title, r.isbn))
    elif criteria == 'title':
        res = Books.query.filter(Books.title.like("%"+search_str+"%")).all()
        for r in res:
            id = r.id
            bk = Books.query.get(id)
            auth_id = bk.author_id
            auth_q = Authors.query.get(auth_id)
            auth_n = auth_q.name
            results.append((auth_n, r.title, r.isbn))
    elif criteria == 'author':
        res = Authors.query.filter(Authors.name.like("%"+search_str+"%")).all()
        for r in res:
            id = r.id
            bk = Books.query.filter_by(author_id=id).first()
            results.append((r.name, bk.title, bk.isbn))
    return results


# books, result of the search
@app.route('/books')
def books(search):
    trivia = get_trivia()
    criteria = search.data['criteria']
    srch_str = search.data['search_string']
    results = query_string(criteria, srch_str)
    counts = len(results)

    if not results:
        flash('No results found!')

    return render_template('books.html',
                           results=results,
                           counts=counts,
                           trivia=trivia)


# requests to Goodreads API
def goodreads_info(book_id):
    res = requests.get("https://www.goodreads.com/book/review_counts.json",
                       params={"key": KEY, "isbns": book_id})
    data = res.json()
    # average rating and number of rating
    num_ratings = data['books'][0]['work_ratings_count']
    avg_score = data['books'][0]['average_rating']
    return num_ratings, avg_score


@app.route('/book/<string:book_id>', methods=['GET', 'POST'])
@login_required
def book(book_id):
    trivia = get_trivia()
    num_ratings, avg_score = goodreads_info(book_id)
    bk = Books.query.filter_by(isbn=book_id).first()
    # TODO: error template with message
    if not bk:
        flash("No results found")
    ath = Authors.query.get(bk.author_id).name
    year = Years.query.get(bk.year_id).year_pub
    bk_name = bk.title
    # rating and review
    usr_n = current_user.username
    usr = User.query.filter_by(username=usr_n).first()
    rv = Review.query.filter_by(
        book_id=bk.id).filter_by(
            user_id=usr.id).first()
    if rv is not None:
        rating, content = rv.rating, rv.content
    else:
        rating, content = None, None
    form = ReviewForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=current_user.username).first()
        u_id = user.id
        bk_id = bk.id
        rating = form.rating.data
        content = form.review.data
        rv = Review(user_id=u_id,
                    book_id=bk_id,
                    rating=rating,
                    content=content)
        db.session.add(rv)
        db.session.commit()
        flash("Your review has been submitted", 'success')
    return render_template('book.html', book_id=book_id, ath=ath,
                           bk_name=bk_name, num_ratings=num_ratings,
                           avg_score=avg_score, year=year, rating=rating,
                           content=content, form=form, trivia=trivia)


# TODO: Edit/Update/Delete Review
# (Ref: Vid-08/CoreySchafer) with modal behaviour


@app.route('/register', methods=['GET', 'POST'])
def register():
    trivia = get_trivia()
    if current_user.is_authenticated:
        return redirect(url_for('home'))
    form = RegistrationForm()
    if form.validate_on_submit():
        # hash the password
        hashed_pwd = bcrypt.generate_password_hash(
            form.password.data).decode('utf-8')
        # creating user
        user = User(username=form.username.data, email=form.email.data,
                    password=hashed_pwd)
        db.session.add(user)
        db.session.commit()
        # message on successful submission
        flash(f"Account created for {form.username.data} !", 'success')
        return redirect(url_for('login'))

    return render_template('register.html', title='Register',
                           form=form, trivia=trivia)


@app.route('/login', methods=['GET', 'POST'])
def login():
    trivia = get_trivia()
    if current_user.is_authenticated:
        return redirect(url_for('home'))
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        # dummy variables
        if user and bcrypt.check_password_hash(
                user.password, form.password.data):
            login_user(user, remember=form.remember_me.data)
            next_page = request.args.get('next')
            flash("You have been logged in!", 'success')
            return redirect(next_page) if next_page else redirect(
                url_for('home'))
        else:
            flash("Login Unsuccessful. Please check username and password",
                  'danger')
    return render_template('login.html', title='Login',
                           form=form, trivia=trivia)


@app.route('/logout')
def logout():
    logout_user()
    return redirect(url_for('home'))


def save_picture(form_picture):
    random_hex = secrets.token_hex(8)
    _, f_ext = os.path.splitext(form_picture.filename)
    picture_fn = random_hex + f_ext
    picture_path = os.path.join(app.root_path,
                                'static/profile_pics',
                                picture_fn)
    output_size = (125, 125)
    i = Image.open(form_picture)
    i.thumbnail(output_size)
    i.save(picture_path)
    return picture_fn


@app.route('/Account', methods=['GET', 'POST'])
@login_required
def account():
    trivia = get_trivia()
    form = UpdateAccountForm()
    if form.validate_on_submit():
        if form.picture.data:
            picture_file = save_picture(form.picture.data)
            current_user.image_file = picture_file
        current_user.username = form.username.data
        current_user.email = form.email.data
        db.session.commit()
        flash("Your account has been updated!", 'success')
        return redirect(url_for('account'))
    elif request.method == 'GET':
        form.username.data = current_user.username
        form.email.data = current_user.email
    image_file = url_for('static',
                         filename=f'profile_pics/{current_user.image_file}')
    return render_template('account.html', title='Account',
                           image_file=image_file, form=form, trivia=trivia)
