-- :name getArticleById :one
SELECT A.name, A.description, A.price FROM Articles AS A WHERE A.id = :a_id