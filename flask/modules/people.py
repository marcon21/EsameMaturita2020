from flask import Blueprint, render_template, request

# Importing the connection to the db
from .db import queries, db

bp = Blueprint('people', __name__)


# Creating the api for giving the list of registered users
@bp.route('/api/people', methods=['GET'])
def apipeople():
    people = {
        'people': list(queries.getPeople(db))
    }
    return people

# Handler for /people
@bp.route('/people', methods=['GET', 'POST'])
def people():
    page = {}
    # the post method occurs while adding a new user
    if request.method == 'POST':
        page['addStatus'] = True
        try:
            with queries.transaction(db) as q:
                # using the sql query in queries/addPerson.sql
                q.addPerson(
                    name=request.form['name'],
                    surname=request.form['surname'],
                    phone=request.form['phone'],
                    fiscalcode=request.form['fiscalcode'])

        except Exception as e:
            print(e)
            page['addStatus'] = False

    page['people'] = list(queries.getPeople(db))

    return render_template('people.html', page=page)
