-- :name getWeddingsInfo :many
SELECT w.id, p1.name, p1.surname, p2.name, p2.surname, w.date 
    FROM weddings AS w 
        LEFT JOIN people AS p1 ON p1.fiscalcode = w.partner1 
        LEFT JOIN people AS p2 ON p2.fiscalcode = w.partner2 
            ORDER BY w.date;

            