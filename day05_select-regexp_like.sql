use sys;
/*================================== SELECT-REGEXP_LIKE ==================================
 Daha karmasik pattern ile sorgulama islemi icin REGEXP_LIKE kullanilabilir.
  -- 'c' => case-sensitive demektir
  -- 'i' => case-insensitive demektir ve default case-insensitive aktiftir.
  
-----Syntax-----
​
 SELECT sutun1,sutun2,...
 FROM tablo_adi
 WHERE REGEXP_LIKE(sutun_adi, 'pattern[]','c'[]);
​
=========================================================================================*/

-- NOT: VEYA islemi icin | karakteri kullanilir.
-- NOT: Baslangici gostermek icin ^ karakteri kullanilir.

-- ******************* Kelimeler Tablosundan *******************
-- Q1 : 'ho' veya 'hi' ile baslayan kelimeleri case-sensitive'e 
-- dikkat etmeksizin listele

	SELECT kelime 
    FROM kelimeler
    WHERE  REGEXP_LIKE ( kelime, '^ho |^hi') ;
    
    -- NOT : Bitisi gostermek icin $ karakteri kullanılır.
    
-- Q2 : 't' veya 'm' ile baslayan kelimeleri case-sensitive'e 
 -- dikkat etmeksizin listele
 
 SELECT kelime 
 FROM kelimeler
 WHERE REGEXP_LIKE ( kelime, 't$ |m$') ;
 
 -- NOT : [!-~] = Butun karakterleri ifade eder.
--       [a-zA-Z0-9] = Harf ve rakamlari temsil eder.
 
-- Q3 : h ile baslayip t ile biten 3 harfli kelimeleri 
-- (h ile t kucuk harfli olanlari) listeleyiniz

 SELECT kelime 
 FROM kelimeler
 WHERE REGEXP_LIKE ( kelime, 'h[!-~]t','c') ;     -- bir koseli bir karaktere tekabul eder
 
 -- Q4 : h ile baslayip t ile biten 2. karakteri rakam olan 
 -- 3 harfli kelimeleri 
-- (h ile t kucuk harfli olanlari) listeleyiniz

 SELECT kelime 
 FROM kelimeler
 WHERE REGEXP_LIKE ( kelime, 'h[0-9]t','c') ;
 
 -- Q5 : h ile baslayip t ile biten 2. karakteri buyuk harf olan 
 -- 3 harfli kelimeleri 
-- (h ile t kucuk harfli olanlari) listeleyiniz

SELECT kelime 
 FROM kelimeler
 WHERE REGEXP_LIKE ( kelime, 'h[A-Z]t','c') ;   
 
-- Q6 : 2. harfi O olan 3 harfli kelimeleri (o harfi buyuk olanlari) 
-- ve id'lerini listeleyiniz

SELECT id,kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime,'^[!-~]O[!-~]$','c');






​



