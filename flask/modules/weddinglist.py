from flask import Blueprint, render_template, request
from .db import queries, db

bp = Blueprint('weddinglist', __name__)


@bp.route('/weddinglist/<wedding_id>', methods=['GET', 'POST'])
def weddinglist(wedding_id):
    page = {}
    if request.method == 'POST':
        try:
            with queries.transaction(db) as q:
                if not q.isArticleBought(w_id=wedding_id,
                                         a_id=request.form['articleid'])[0]:
                    q.buyArticle(w_id=wedding_id,
                                 a_id=request.form['articleid'],
                                 buyer="Da implementare")
                else:
                    raise Exception()

            page['article_bought'] = {'status': True}
        except Exception as e:
            print(e)
            page['article_bought'] = {'status': False}

        page['article_bought']['articleinfo'] = queries.getArticleById(
            db, a_id=request.form['articleid'])

    page['partners'] = list(queries.getPartnerByWedding(db, w_id=wedding_id))
    page['articles'] = list(queries.getListbyWedding(db, w_id=wedding_id))

    return render_template('weddinglist.html', page=page)


@bp.route('/weddinglist/<wedding_id>/edit', methods=['GET', 'POST'])
def weddinglistedit(wedding_id):
    page = {}
    if request.method == 'POST':
        page['transaction_stutaus'] = True
        try:
            with queries.transaction(db) as q:
                if request.form['action'] == 'remove':
                    q.removeItemFromWedding(
                        w_id=wedding_id, a_id=request.form['itemid'])
                elif request.form['action'] == 'add':
                    print(request.form['itemid'], type(request.form['itemid']))
                    q.addItemToWedding(
                        w_id=wedding_id, a_id=request.form['itemid'])
                else:
                    page['transaction_status'] = False

        except Exception as e:
            print(e)
            page['transaction_status'] = False

    page['partners'] = list(queries.getPartnerByWedding(db, w_id=wedding_id))
    page['boughtArticles'] = list(
        queries.getListbyWeddingOrderID(db, w_id=wedding_id))
    page['availableArticles'] = []

    allArticles = queries.getArticles(db)
    boughtArticlesID = list(
        map(lambda x: x[4], page['boughtArticles']))

    for a in allArticles:
        if a[0] not in boughtArticlesID:
            page['availableArticles'].append(a)

    return render_template('editweddinglist.html', page=page)
