import dataset
from flask import Flask, request, jsonify

app = Flask(__name__)

db = dataset.connect("sqlite:///data.db")
table = db["data"]

@app.route("/pushdataOP1MP0Unv0H84ZENIgMA", methods=["POST"])
def pushdata():
    table.insert(request.json)
    return jsonify(success=True)
