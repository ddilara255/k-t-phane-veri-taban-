CREATE DATABASE KutuphaneDB;
USE KutuphaneDB;
CREATE TABLE Kitaplar (
    kitap_no int PRIMARY KEY,      
    kitap_adi varchar(50) NOT NULL, 
    yazar varchar(50) NOT NULL,    
    sayfa_sayisi real,             
    id int identity(1,1)           
);


INSERT INTO Kitaplar (kitap_no, kitap_adi, yazar, sayfa_sayisi) VALUES (101, 'Çalıkuşu', 'Reşat Nuri Güntekin', 544);
INSERT INTO Kitaplar (kitap_no, kitap_adi, yazar, sayfa_sayisi) VALUES (102, 'Nutuk', 'Mustafa Kemal Atatürk', 600);
INSERT INTO Kitaplar (kitap_no, kitap_adi, yazar, sayfa_sayisi) VALUES (103, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 160);
INSERT INTO Kitaplar (kitap_no, kitap_adi, yazar, sayfa_sayisi) VALUES (104, 'İnce Memed', 'Yaşar Kemal', 436);
INSERT INTO Kitaplar (kitap_no, kitap_adi, yazar, sayfa_sayisi) VALUES (105, 'Dokuzuncu Hariciye Koğuşu', 'Peyami Safa', 128);
SELECT * FROM Kitaplar;