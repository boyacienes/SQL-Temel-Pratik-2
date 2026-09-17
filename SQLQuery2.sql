
--1)kaç öğrenci var?
SELECT count(*) FROM ogrenciler

--2)tüm öğrencilerin final ortalaması
SELECT avg(final) as final_ortalamasi FROM ogrenciler

--3)maksimum final notu
SELECT max(final) FROM ogrenciler

--4)erkek öğrencilerin vize1 ortalamaları
SELECT AVG(vize1) as erkek_vize1_ort FROM ogrenciler WHERE cinsiyet ='E' 

--5)Vize1 ve Vize2 nin ortalamasını yeni bir sütun olarak göster (AS kullanarak)
SELECT (vize1 + vize2)/2 as vize_ortalamasi FROM ogrenciler

--6)Final notu 70 in altında olan öğrencilerin ad, soyad ve final notunu getir
SELECT ad , soyad , final FROM ogrenciler WHERE final<70

--7)Bir öğrencinin final notunu güncelle
UPDATE ogrenciler set final= 97 WHERE ogrenci_no=10003

--8)Final notu sınıf ortalamasının üzerinde olan öğrencileri getir
SELECT * FROM ogrenciler 
WHERE final > (SELECT avg(final) FROM ogrenciler)
ORDER BY final DESC

--9)Adı "A" harfi ile başlayan öğrencilerin ad, soyad ve final notunu getir
SELECT ad , soyad , final FROM ogrenciler WHERE ad like 'A%'

--10)Soyadı "an" ile biten öğrencileri listele
SELECT * FROM ogrenciler WHERE soyad like '%an'

--11)Adında "e" harfi geçen ve final notu 80'in üzerinde olan öğrencilerin
SELECT * FROM ogrenciler WHERE ad like '%e%' and final>80

