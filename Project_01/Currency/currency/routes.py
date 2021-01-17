# pylint: disable=missing-docstring
import requests
from flask import render_template, request, jsonify
from currency import app
from config import Config
ACCESS_KEY = Config.ACCESS_KEY


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/convert", methods=["POST"])
def convert():
    currency = request.form.get("currency")
    symbols = "&symbols=INR," + currency + "&format=1"
    base_url = "http://data.fixer.io/api/"
    endpoint_1 = "latest?access_key="
    url = base_url + endpoint_1 + ACCESS_KEY + symbols
    res = requests.get(url)

    # make sure request succeded
    if res.status_code != 200:
        return jsonify({'success': False})

    # Makes sure currency is in response
    data = res.json()
    if currency not in data["rates"]:
        return jsonify({"success": False})

    inr = data["rates"]["INR"]
    other_currency = data["rates"][currency]
    inr_oc = round(inr/other_currency, 2)

    return jsonify(
        {"success": True,
         "INR": round(inr, 2),
         "Other": inr_oc})
