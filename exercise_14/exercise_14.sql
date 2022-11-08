-- the average film length by category
-- include the category name and avg length
SELECT
    category.name,
    avg(film.length)
FROM
    film
    LEFT JOIN film_category on film.film_id = film_category.film_id
    LEFT JOIN category on film_category.category_id = category.category_id
GROUP BY
    category.name