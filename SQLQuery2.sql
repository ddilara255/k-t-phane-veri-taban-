USE KutuphaneDB; 
GO

CREATE TABLE Yazarlar (
    YazarID INT IDENTITY(1,1) PRIMARY KEY,
    YazarAdi VARCHAR(50) NOT NULL,
    YazarSoyadi VARCHAR(50) NOT NULL
);
GO

CREATE TABLE OduncTakip (
    IslemID INT IDENTITY(1,1) PRIMARY KEY,
    KitapNo INT,
    OgrenciAdi VARCHAR(50),
    OduncTarihi DATETIME DEFAULT GETDATE()
);
GO

CREATE INDEX IX_KitapAdi ON Kitaplar(kitap_adi);
GO

CREATE VIEW DetayliKitapListesi AS
SELECT k.kitap_no, k.kitap_adi, k.sayfa_sayisi, k.yazar
FROM Kitaplar k;
GO

CREATE FUNCTION KitapDurumuAyarla(@Sayfa INT)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @Sonuc VARCHAR(20);
    IF @Sayfa >= 500 SET @Sonuc = 'Kalın Kitap';
    ELSE SET @Sonuc = 'Normal Kitap';
    RETURN @Sonuc;
END;
GO


CREATE TRIGGER Trg_KitapSilmeLog
ON Kitaplar
AFTER DELETE
AS
BEGIN
    PRINT 'UYARI: Bir kitap başarıyla silindi!';
END;
GO