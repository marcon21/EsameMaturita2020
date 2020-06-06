from flask import Blueprint, render_template, request
from .db import queries, db

bp = Blueprint('weddinglist', __name__)


@bp.route('/weddinglist/<wedding_id>', methods=['GET', 'POST'])
def weddings(wedding_id):
    page = {}
    if request.method == 'POST':
        try:
            with queries.transaction(db) as q:
                q.buyArticle(w_id=wedding_id,
                             a_id=request.form['articleid'])

            page['article_bought'] = {'status': True}
        except:
            page['article_bought'] = {'status': False}

        page['article_bought']['articleinfo'] = queries.getArticleById(
            db, a_id=request.form['articleid'])

    page['partners'] = list(queries.getPartnerByWedding(db, w_id=wedding_id))
    page['articles'] = list(queries.getListbyWedding(db, w_id=wedding_id))

    return render_template('weddinglist.html', page=page)
