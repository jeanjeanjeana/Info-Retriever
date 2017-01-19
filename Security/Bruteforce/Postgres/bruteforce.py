#!/usr/bin/python

import sys
import psycopg2

hostname = 'localhost'
username = '<Username>'
password = sys.argv[1]
database = 'postgres'

def query ( conn ):
    cur = conn.cursor()
    cur.execute( "SELECT current_database()" )
    for data in cur.fetchall():
        print data


con = psycopg2.connect( host=hostname, user=username, password=password, dbname=database )
query( con )
con.close()
