from flask import Blueprint, render_template, request

# Importing the connection to the db
from .db import queries, db

bp = Blueprint('weddinglist', __name__)

# Handler for the weddinglist
@bp.route('/weddinglist/<wedding_id>', methods=['GET', 'POST'])
def weddinglist(wedding_id):
    page = {}
    # the post method occurs while buying a product
    if request.method == 'POST':
        try:
            with queries.transaction(db) as q:
                # check first is the article is still not bought
                if not q.isArticleBought(w_id=wedding_id,
                                         a_id=request.form['articleid'])[0]:
                    # buy the article
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

    # getting the names of the partners
    page['partners'] = list(queries.getPartnerByWedding(db, w_id=wedding_id))
    # get the list of the wedding
    page['articles'] = list(queries.getListbyWedding(db, w_id=wedding_id))

    return render_template('weddinglist.html', page=page)

# Handler for the editing of the weddinglist
@bp.route('/weddinglist/<wedding_id>/edit', methods=['GET', 'POST'])
def weddinglistedit(wedding_id):
    page = {}
    # the post method occurs adding or removing a product from the list
    if request.method == 'POST':
        page['transaction_stutaus'] = True
        try:
            with queries.transaction(db) as q:
                # if removing an article from the list
                if request.form['action'] == 'remove':
                    q.removeItemFromWedding(
                        w_id=wedding_id, a_id=request.form['itemid'])
                # if adding an article from the list
                elif request.form['action'] == 'add':
                    q.addItemToWedding(
                        w_id=wedding_id, a_id=request.form['itemid'])
                else:
                    page['transaction_status'] = False

        except Exception as e:
            print(e)
            page['transaction_status'] = False

    # getting the names of the partners
    page['partners'] = list(queries.getPartnerByWedding(db, w_id=wedding_id))
    # getting the list of the articles in the bridal registry
    page['boughtArticles'] = list(
        queries.getListbyWeddingOrderID(db, w_id=wedding_id))
    page['availableArticles'] = []

    # getting all the articles aviable in the db
    allArticles = queries.getArticles(db)
    # getting all the ids of the articles in the bridal registry
    boughtArticlesID = list(
        map(lambda x: x[4], page['boughtArticles']))

    for a in allArticles:
        # if not yet bought
        if a[0] not in boughtArticlesID:
            # add item in the list of articles not yet in the bridal registry
            page['availableArticles'].append(a)

    return render_template('editweddinglist.html', page=page)
