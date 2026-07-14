USE KutuphaneDB; 
GO


CREATE PROC sp_Ekle 
    @no INT, 
    @ad VARCHAR(100), 
    @yazar VARCHAR(100), 
    @sayfa REAL 
AS
BEGIN
    INSERT INTO Kitaplar(kitap_no, kitap_adi, yazar, sayfa_sayisi) 
    VALUES (@no, @ad, @yazar, @sayfa);
END;
GO


CREATE PROC sp_Listele
AS
BEGIN
    SELECT * FROM Kitaplar;
END;
GO