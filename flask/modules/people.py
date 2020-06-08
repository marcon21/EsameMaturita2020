from flask import Blueprint, render_template
from .db import queries, db

bp = Blueprint('people', __name__)


@bp.route('/api/people', methods=['GET'])
def apipeople():
    people = {
        'people': list(queries.getPeople(db))
    }
    return people


@bp.route('/people', methods=['GET', ''])
def people():
    page = {
        'people': list(queries.getPeople(db))
    }
    return render_template('people.html', page=page)
