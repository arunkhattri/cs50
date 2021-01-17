from flask_wtf import FlaskForm
from flask_wtf.file import FileField, FileAllowed
from flask_login import current_user
from wtforms import StringField, PasswordField, SubmitField, BooleanField
from wtforms import TextAreaField, IntegerField, SelectField
from wtforms.validators import DataRequired, Length, Email, EqualTo
from wtforms.validators import InputRequired, NumberRange
from wtforms.validators import ValidationError
from bibliosmia.models import User


class RegistrationForm(FlaskForm):
    username = StringField('Username',
                           validators=[DataRequired(), Length(min=2, max=20)])
    email = StringField(
        'Email', validators=[DataRequired(), Email()])
    password = PasswordField(
        'Password', validators=[DataRequired()])
    confirm_password = PasswordField(
        'Confirm Password', validators=[DataRequired(), EqualTo('password')])
    submit = SubmitField('Sign Up')

    def validate_username(self, username):
        user = User.query.filter_by(username=username.data).first()
        if user:
            raise ValidationError(
                'username exists, please be more imaginative...')

    def validate_email(self, email):
        user = User.query.filter_by(email=email.data).first()
        if user:
            raise ValidationError(
                'email exists, please choose different one...')


class LoginForm(FlaskForm):
    username = StringField('Username',
                           validators=[DataRequired(), Length(min=2, max=20)])
    password = PasswordField('Password',
                             validators=[DataRequired()])
    remember_me = BooleanField('Remember Me')
    submit = SubmitField('LOGIN')


class SearchForm(FlaskForm):
    criteria = SelectField('Search by', choices=[('isbn', 'ISBN'),
                                                 ('title', 'Title'),
                                                 ('author', 'Authors')])
    search_string = StringField('type at least 3 characters...',
                                validators=[DataRequired(), Length(min=3)])
    submit = SubmitField('Search')


class ReviewForm(FlaskForm):
    # TODO: rating to be float fiel
    rating = IntegerField('Rating (1 to 5)', validators=[InputRequired(),
                                                         NumberRange(1, 5)])
    review = TextAreaField('Review (Minimum 140 characters)',
                           validators=[DataRequired(),
                                       Length(min=140, max=300)])
    submit = SubmitField('Submit')


class UpdateAccountForm(FlaskForm):
    username = StringField('Username',
                           validators=[DataRequired(), Length(min=2, max=20)])
    email = StringField(
        'Email', validators=[DataRequired(), Email()])
    picture = FileField('Update Profile Picture',
                        validators=[FileAllowed(['jpg', 'png'])])
    submit = SubmitField('Update')

    def validate_username(self, username):
        if username.data != current_user.username:
            user = User.query.filter_by(username=username.data).first()
            if user:
                raise ValidationError(
                    'username exists, please be more imaginative...')

    def validate_email(self, email):
        if email.data != current_user.email:
            user = User.query.filter_by(email=email.data).first()
            if user:
                raise ValidationError(
                    'email exists, please choose different one...')
