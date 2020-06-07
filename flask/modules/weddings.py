from flask import Blueprint, render_template
from .db import queries, db

bp = Blueprint('weddings', __name__)


@bp.route('/weddings', methods=['GET'])
def weddinglists():
    page = {
        'weddings': queries.getWeddingsInfo(db)
    }
    return render_template('weddings.html', page=page)
