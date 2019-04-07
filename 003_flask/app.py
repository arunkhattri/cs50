from datetime import datetime, date
from utilities import days_remaining
from flask import Flask, render_template, request, flash, session
from flask_session import Session

app = Flask(__name__)

app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

@app.route("/")
def index():
    headline = "Hello, world!"
    return render_template("index.html", headline=headline)


# @app.route("/<string:name>")
# def hello(name):
#     name = name.capitalize()
#     return f"Hello, {name}!"

@app.route("/bye")
def bye():
    headline = "Good Bye!"
    return render_template("index.html", headline=headline)

@app.route("/newyear")
def newyear():
    now = datetime.now()
    newyear = now.day == 1 and now.month == 1
    return render_template("newyear.html", newyear=newyear)
    

@app.route("/birthday")
def birthday():
    days_to_bd = days_remaining()
    return render_template("birthday.html", bd=days_to_bd)

@app.route("/more")
def more():
    return render_template("more.html")

@app.route("/registration")
def registration():
    return render_template("registration.html")

@app.route("/hello", methods=["GET", "POST"])
def hello():
    if request.method == "GET":
        flash("Please submit the form") 
        return render_template("registration.html")
    else:
        name = request.form.get("name")
        age = request.form.get("age")
        sports = request.form.get("sports")
        return render_template("hello.html", name=name, age=age, sports=sports)

# notes = []

@app.route("/notebook", methods=['GET', 'POST'])        
def notebook():
    if session.get("notes") is None:
        session["notes"] = []
    if request.method == "POST":
        note = request.form.get("note")
        session["notes"].append(note)
    return render_template("notebook.html", notes=session["notes"])
