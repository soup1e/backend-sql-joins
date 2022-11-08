-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT
    category.name
FROM
    category
    LEFT JOIN film_category on category.category_id = film_category.category_id
    LEFT JOIN film on film.film_id = film_category.film_id
    INNER JOIN inventory on inventory.film_id = film.film_id
    LEFT JOIN rental on rental.inventory_id = inventory.inventory_id
WHERE
    rental.rental_date is NULL