from flask import Blueprint, render_template, request

# Importing the connection to the db
from .db import queries, db

bp = Blueprint('weddings', __name__)

# Handler for /weddings
@bp.route('/weddings', methods=['GET', 'POST'])
def weddinglists():
    page = {}
    # the post method occurs while adding a new wedding
    if request.method == 'POST':
        page['addStatus'] = True
        try:
            # getting the ids of the 2 partners from the form
            ids = request.form.getlist('select1')
            assert len(ids) == 2
            with queries.transaction(db) as q:
                q.newMarriage(id1=ids[0], id2=ids[1])

        except Exception as e:
            print(e)
            page['addStatus'] = False

    # getting the info about all marriages
    page['weddings'] = queries.getWeddingsInfo(db)

    return render_template('weddings.html', page=page)
