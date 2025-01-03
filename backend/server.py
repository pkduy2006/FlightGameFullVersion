import mysql.connector
from flask import Flask, Response
from flask_cors import CORS
from geopy import distance
import json
from airport import *

app = Flask(__name__)
CORS(app)

connection = mysql.connector.connect(
    host = '127.0.0.1',
    port = '3306',
    database = 'G1',
    user = 'root',
    password = '16102006',
    autocommit = True
)

def execute_select(query, params=None):
    cursor = connection.cursor(dictionary=True)
    try:
        cursor.execute(query, params if params else ())
        result = cursor.fetchall()
    finally:
        cursor.close()
    return result

def execute_insert(query, params=None):
    cursor = connection.cursor(dictionary=True)
    try:
        cursor.execute(query, params if params else ())
    finally:
        cursor.close()

def get_airport():
    sql = """SELECT airport.name as 'name', airport.iso_country as 'iso_country', airport.municipality as 'municipality', country.name as 'country', airport.ident as 'ident', airport.latitude_deg as 'latitude_deg', airport.longitude_deg as 'longitude_deg'
        FROM airport, country
        WHERE airport.iso_country = country.iso_country
        AND airport.continent = 'EU'
        AND airport.type = 'large_airport'
        AND airport.iso_country NOT IN (SELECT airport.iso_country FROM airport WHERE iso_country = 'RU')
        ORDER BY RAND()
        LIMIT 40;"""
    result = execute_select(sql)
    return result

def check_min_distance(airports):
    for i in range(len(airports) - 1):
        for j in range(i + 1, len(airports)):
            if distance.distance((airports[i]['latitude_deg'], airports[i]['longitude_deg']), (airports[j]['latitude_deg'], airports[j]['longitude_deg'])).km > 2000:
                return True
    return False

@app.route('/setup/user=<user_name>')
def setup(user_name):
    sql = """SELECT COUNT(*) as 'number' FROM user;"""
    uid = execute_select(sql)[0]['number'] + 1
    sql = """INSERT INTO user (id, name) VALUES (%s, %s);"""
    execute_insert(sql, (uid, user_name,))

    airports = get_airport()
    while not check_min_distance(airports):
        airports = get_airport()

    sql = """SELECT * FROM depot;"""
    depots = execute_select(sql)

    sql = """SELECT * FROM stronghold;"""
    strongholds = execute_select(sql)

    sql = """INSERT INTO saved_base (user_id, ident) VALUES (%s, %s);"""
    execute_insert(sql, (uid, airports[0]['ident']))

    sql = """INSERT INTO saved_target (user_id, ident) VALUES (%s, %s);"""
    execute_insert(sql, (uid, airports[1]['ident']))

    for i in range(2, 9):
        sql = """INSERT INTO saved_abandoned (user_id, ident) VALUES (%s, %s);"""
        cursor = connection.cursor(dictionary=True)
        execute_insert(sql, (uid, airports[i]['ident']))

    i = 10
    for depot in depots:
        for j in range(3):
            sql = """INSERT INTO saved_depot (user_id, ident, reserves) VALUES (%s, %s, %s);"""
            execute_insert(sql, (uid, airports[i]['ident'], depot['reserves']))
            i += 1
    for stronghold in strongholds:
        for j in range(3):
            sql = """INSERT INTO saved_stronghold (user_id, ident, troops) VALUES (%s, %s, %s);"""
            execute_insert(sql, (uid, airports[i]['ident'], stronghold['troops']))
            i += 1

    return airports

if __name__ == '__main__':
    app.run(use_reloader = True, host = '127.0.0.1', port = 5000)