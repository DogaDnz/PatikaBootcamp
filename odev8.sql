CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 1. id = 5 olan çalışanın email adresini değiştir
UPDATE employee SET email = 'updated_email@example.com' WHERE id = 5;

-- 2. ismi 'John Smith' olan kişinin doğum tarihini değiştir
UPDATE employee SET birthday = '1990-01-01' WHERE name = 'John Smith';

-- 3. birthday 1980'den önce olan kişilerin adını güncelle
UPDATE employee SET name = 'Old Employee' WHERE birthday < '1980-01-01';

-- 4. Belirli bir e-posta adresine sahip olan kişinin ismini güncelle
UPDATE employee SET name = 'Updated Name' WHERE email = 'user@example.com';

-- 5. id 10'dan büyük olanların email adreslerini “@company.com” yap
UPDATE employee SET email = CONCAT(SPLIT_PART(email, '@', 1), '@company.com') WHERE id > 10;


-- 1. id = 3 olan çalışanı sil
DELETE FROM employee WHERE id = 3;

-- 2. Adı 'Jane Doe' olan çalışanı sil
DELETE FROM employee WHERE name = 'Jane Doe';

-- 3. Doğum tarihi 1970'ten önce olanları sil
DELETE FROM employee WHERE birthday < '1970-01-01';

-- 4. 'test.com' uzantılı e-posta adresi olanları sil
DELETE FROM employee WHERE email LIKE '%@test.com';

-- 5. id’si çift sayı olan çalışanları sil
DELETE FROM employee WHERE MOD(id, 2) = 0;
