#!/usr/bin/python

#source: https://www.a2hosting.com/kb/developer-corner/postgresql/connecting-to-postgresql-using-python


hostname = 'localhost'
username = 'USERNAME'
password = 'PASSWORD'
database = 'DBNAME' #if you don't have any use 'postgres'

# Simple routine to run a query on a database and print the results:
def doQuery( conn ) :
    cur = conn.cursor()


    for firstname, lastname in cur.fetchall() :
        print firstname, lastname


print "Using psycopg2…"
import psycopg2
myConnection = psycopg2.connect( host=hostname, user=username, password=password, dbname=database )
doQuery( myConnection )
myConnection.close()

print "Using PyGreSQL…"
import pgdb
myConnection = pgdb.connect( host=hostname, user=username, password=password, database=database )
doQuery( myConnection )
myConnection.close()