/*
a)
*//*
a) The actor table includes information about actors, such as actor_id, first_name, last_name, and last_update.
b) The film table includes information about films, such as film_id, title, description, release_year, rental information, length, rating, and last_update.
c) The table that contains both actor_id and film_id is film_actor.
d) The rental table includes rental transactions, such as rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, and last_update. This information is somewhat hard to read by itself because it mostly uses IDs instead of full names or titles.
e) The inventory table includes inventory records, such as inventory_id, film_id, store_id, and last_update.
f) To understand the names of all films rented on a specific date, I would need the rental, inventory, and film tables. The rental table shows the rental date and inventory_id. The inventory table connects inventory_id to film_id. The film table connects film_id to the film title.
*/
SELECT rental_date, inventory_id FROM rental;
SELECT inventory_id, film_id FROM inventory;
SELECT film_id, title FROM film;