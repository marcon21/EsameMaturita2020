-- :name buyArticle :affected
UPDATE BridalRegistry SET purchased = TRUE WHERE wedding = :w_id AND article = :a_id