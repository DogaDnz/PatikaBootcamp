--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT City.city, Country.country FROM City
INNER JOIN country ON city.country_id = country.country_id  

--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT Customer.first_name,Customer.last_name,Payment.payment_id FROM Customer
INNER JOIN Payment ON Payment.customer_id = Customer.customer_id

--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT Customer.first_name,Customer.last_name,rental.rental_id FROM Customer
INNER JOIN rental ON rental.customer_id = Customer.customer_id;
