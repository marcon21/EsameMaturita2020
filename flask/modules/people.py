from flask import Blueprint, render_template, request
from .db import queries, db

bp = Blueprint('people', __name__)


@bp.route('/api/people', methods=['GET'])
def apipeople():
    people = {
        'people': list(queries.getPeople(db))
    }
    return people


@bp.route('/people', methods=['GET', 'POST'])
def people():
    page = {}
    if request.method == 'POST':
        page['addStatus'] = True
        try:
            with queries.transaction(db) as q:
                q.addPerson(
                    name=request.form['name'], surname=request.form['surname'], phone=request.form['phone'], fiscalcode=request.form['fiscalcode'])
        except Exception as e:
            print(e)
            page['addStatus'] = False

    page['people'] = list(queries.getPeople(db))

    return render_template('people.html', page=page)
