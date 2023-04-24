/*========================================
               VERI GIRISI
========================================*/
-- INSERT INTO + tablo adi + VALUES + (std_id CHAR(4),std_name VARCHAR(25),std_age int)
-- Degerleri girerken dikkat edilmesi gereken Tabloyu 
-- olustururken degerleri atadigimiz veri cinsinden olmasi
-- String ifadeleri tek tirnak icinde yaziyoruz.
-- Date data tipi de String gibi tek tirnak icine yazilir,
-- ayrica MySQL 'in default tarih formati YYYY-MM-DD seklindedir.

/*******************************************************
-> Bir field'a kaydedilecek verileri UNIQUE yapmak icin 
 table olustururken field isminin yanina UNIQUE yaziyoruz.
-> Bir field'a kaydedilecek verilerde null olmasin istiyorsak 
table olustururken field isminin yanina NOT NULL yaziyoruz.

-- UNIQUE olarak belirledigimiz bir field'a istedigimiz kadar NULL deger kaydedebiliriz
-- ancak data tipi String ise hiclik ifadesini sadece 1 kere kaydeder, 
-- diger kayitlarda duplicate hatasi verir.


*********************************************************/
-- Fen Lisesi ogrencilerinin okul no , isim , derece, adres ve 
-- son degisiklik tarihi field'lari olan tablosunu hazirlayalim.
-- okul no field'i UNIQUE olmali, isim field'i da bos birakilmasin.

CREATE TABLE fen_lisesi
(
okul_no CHAR(3) UNIQUE,
isim VARCHAR(25) NOT NULL,
derece DOUBLE,
adres VARCHAR(50),
last_uptade DATE 
);

SELECT * FROM fen_lisesi;

INSERT INTO fen_lisesi VALUES (101, 'Mehmet Dag', 4.5, 'Ankara','2023-01-20');
INSERT INTO fen_lisesi VALUES (102, 'Berrin Hanim', 4.6, 'Istanbul','2023-01-18');
INSERT INTO fen_lisesi VALUES (103, 'Mehmet Erden', 3.9, 'Izmir','2023-01-19');
INSERT INTO fen_lisesi VALUES (104, 'Sinan Bey', 4.7, 'Istanbul','2023-01-20');
INSERT INTO fen_lisesi VALUES (105, 'Esra Turker', 4.9, 'Ankara','2023-01-18');
INSERT INTO fen_lisesi VALUES (106, 'Esra Turker', 4.9, 'Ankara','2023-01-18');
INSERT INTO fen_lisesi VALUES (107, null, 4.9, 'Ankara','2023-01-18'); -- isim sutunu null kabul etmez
INSERT INTO fen_lisesi VALUES (107, 'Mehmet Filik', 3.4, 'İzmir',null);
INSERT INTO fen_lisesi VALUES (109, 'Burcu Tembel', 3.5, null,'2023-01-18');
INSERT INTO fen_lisesi VALUES (null, 'Derya Dursun', 3.5, 'Istanbul','2023-01-18');
INSERT INTO fen_lisesi VALUES ('', 'Erdal Akgun', 3.5, 'Istanbul','2023-01-18');


/* ----------------------------------------------
Q1 : okul_no , isim , adres, derece fieldlari olan 
anadolu lisesi table olusturun. okul_no CHAR ve UNIQUE, 
isim NOT NULL olacak
------------------------------------------------- */

CREATE TABLE anadolu_lisesi
(
okul_no CHAR(4) UNIQUE,
isim VARCHAR(25) NOT NULL,
adres VARCHAR(20),
derece DOUBLE
);

SELECT * FROM anadolu_lisesi;

INSERT INTO anadolu_lisesi VALUES ('1000','Ayse Sezen','Duisburg',4.9);
INSERT INTO anadolu_lisesi VALUES ('1001','Burhan Semiz','Amasya',3.9);
INSERT INTO anadolu_lisesi VALUES ('1002','Anil Fidan','Ankara',4.5);
INSERT INTO anadolu_lisesi VALUES ('1003','Sule Serindik',null,4.9);
INSERT INTO anadolu_lisesi VALUES ('1004','Hakan Unlu','Istanbul',null);
INSERT INTO anadolu_lisesi VALUES ('','Duygu Olcay','Duisburg',4.9);
INSERT INTO anadolu_lisesi VALUES ('1005','Burcu Torbaci','Izmir',4.9);
INSERT INTO anadolu_lisesi (okul_no, isim, derece) VALUES ('1006','Mehmet Emre',4.2);
INSERT INTO anadolu_lisesi (isim,okul_no,derece) VALUES ('Emre Cigit','1007',4.2);
INSERT INTO anadolu_lisesi (adres,okul_no,isim) VALUES ('Izmit','1008','Berke Bey');

