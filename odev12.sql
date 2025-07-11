--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) FROM FILM

WHERE LENGTH > (SELECT AVG(LENGTH) FROM FILM)

--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) FROM FILM
WHERE RENTAL_RATE = (SELECT MAX(RENTAL_RATE) FROM FILM)

--film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

SELECT * FROM Film
WHERE rental_rate = (SELECT (MIN(rental_rate) FROM FILM)) AND replacement_cost = (SELECT(MIN(replacement_cost) FROM FILM)

--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT customer_id
FROM payment
GROUP BY customer_id
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) cnt
        FROM payment
        GROUP BY customer_id
    ) temp
);

