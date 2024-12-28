import mysql.connector
from flask import Flask, Response
from flask_cors import CORS
from geopy import distance
import json

app = Flask(__name__)
CORS(app)

connection = mysql.connector.connect(
    host = '127.0.0.1',
    port = '3306',
    database = 'flightGame',
    user = 'root',
    password = '16102006',
    autocommit = True
)