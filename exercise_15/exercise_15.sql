-- the total run time of all inventory items if they were all played back to back
SELECT
    sum(film.length)
FROM
    film
    JOIN inventory on film.film_id = inventory.film_id