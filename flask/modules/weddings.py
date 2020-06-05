from flask import Blueprint
from .db import queries, db

bp = Blueprint('weddings', __name__)


@bp.route('/weddings')
def weddings():
    return str(list(queries.getListbyWedding(db, w_id=1)))
