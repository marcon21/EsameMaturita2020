-- :name buyArticle :affected
UPDATE BridalRegistry SET purchased = TRUE, buyer = :buyer WHERE wedding = :w_id AND article = :a_id