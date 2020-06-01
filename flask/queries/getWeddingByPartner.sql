-- :name getWeddingById :many
SELECT * FROM Weddings WHERE partner1 = :p_id OR partner2 = :p_id