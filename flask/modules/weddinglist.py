from flask import Blueprint, render_template
from .db import queries, db

bp = Blueprint('weddinglist', __name__)


@bp.route('/weddinglist/<wedding_id>')
def weddings(wedding_id):
    page = {
        'partners': list(queries.getPartnerByWedding(db, w_id=wedding_id)),
        'articles': list(queries.getListbyWedding(db, w_id=wedding_id))
    }
    return render_template('weddinglist.html', page=page)
