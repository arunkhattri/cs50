import requests


ACCESS_KEY = "6fce700a385113eb70295be225f8a704"
SYMBOLS = "&symbols=INR,USD&format=1"
BASE_URL = "http://data.fixer.io/api/"
ENDPOINT_1 = "latest?access_key="


def exchange_rates():
    url = BASE_URL + ENDPOINT_1 + ACCESS_KEY + SYMBOLS
    # url = "http://data.fixer.io/api/latest?access_key=6fce700a385113eb70295be225f8a704&symbols=USD,INR&format=1"
    res = requests.get(url)
    if res.status_code != 200:
        raise Exception("[ERROR] API Request unsuccessful.")
    data = res.json()
    inr = data["rates"]["INR"]
    usd = data["rates"]["USD"]
    inr_usd = round(inr/usd, 2)
    print(f"[-] 1 Euro = ₹{round(inr, 2)}")
    print(f"[-] 1 USD = ₹{inr_usd}")



if __name__ == '__main__':
    # url = BASE_URL + "latest?access_key=" + ACCESS_KEY + SYMBOLS
    # print(url)
    exchange_rates()
