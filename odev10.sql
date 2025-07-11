--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

SELECT City.city,Country.country FROM city
LEFT JOIN country on
City.country_id = Country.country_id

--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

SELECT payment.payment_id,customer.first_name,customer.last_name FROM Payment
RIGHT JOIN Customer ON 
Customer.customer_id = payment.customer_id 



--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
SELECT rental.rental_id,customer.first_name,customer.last_name FROM Customer
FULL JOIN rental ON 
rental.customer_id = customer.customer_id