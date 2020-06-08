from flask import Blueprint, render_template, request
from .db import queries, db

bp = Blueprint('weddings', __name__)


@bp.route('/weddings', methods=['GET', 'POST'])
def weddinglists():
    page = {}
    if request.method == 'POST':
        page['addStatus'] = True
        try:
            ids = request.form.getlist('select1')
            assert len(ids) == 2
            with queries.transaction(db) as q:
                q.newMarriage(id1=ids[0], id2=ids[1])

        except Exception as e:
            print(e)
            page['addStatus'] = False

    page['weddings'] = queries.getWeddingsInfo(db)

    return render_template('weddings.html', page=page)
