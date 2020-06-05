import psycopg2
import embrace

db = psycopg2.connect('postgres://admin:1234@localhost:5435/l_nozze')
queries = embrace.module('./queries')
