-- :name getPartnerByWedding :many
SELECT name, surname FROM People WHERE fiscalcode IN (SELECT partner1 FROM Weddings WHERE id=:w_id) OR fiscalcode IN (SELECT partner2 FROM Weddings WHERE id=:w_id)