-- :name isArticlePurchased :one
SELECT B.purchased FROM BridalRegistry AS B WHERE wedding = :w_id AND article = :a_id