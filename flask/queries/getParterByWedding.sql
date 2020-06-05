-- :name getPartnerByWedding :many
SELECT name, surname FROM People WHERE id IN (SELECT partner1 FROM Weddings WHERE id=:w_id) OR id IN (SELECT partner2 FROM Weddings WHERE id=:w_id)