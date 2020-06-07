-- :name getWeddingsInfo :many
SELECT w.id, p1.name, p1.surname, p2.name, p2.surname FROM weddings AS w LEFT JOIN people AS p1 ON p1.id = w.partner1 LEFT JOIN people AS p2 ON p2.id = w.partner2;