from datetime import datetime, date
from utilities import days_remaining
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    headline = "Hello, world!"
    return render_template("index.html", headline=headline)


@app.route("/<string:name>")
def hello(name):
    name = name.capitalize()
    return f"Hello, {name}!"

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
        
        
