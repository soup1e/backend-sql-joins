-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT
    city.city,
    sum(payment.amount) as sum
FROM
    city
    LEFT JOIN address on address.city_id = city.city_id
    LEFT JOIN customer on address.address_id = customer.address_id
    LEFT JOIN payment on payment.customer_id = customer.customer_id
WHERE
    payment.amount is not null
GROUP by
    city.city_id
ORDER by
    sum desc
LIMIT
    10