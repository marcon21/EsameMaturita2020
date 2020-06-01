-- :name getListbyWedding :many
SELECT A.name, A.description, A.price, B.purchased FROM 
    bridalregistry AS B, 
    weddings AS W, 
    articles AS A WHERE 
        B.wedding = W.id AND 
        W.id = :w_id AND 
        B.article = A.id;