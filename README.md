Kütüphane Yönetim Sistemi - SQL Veri Tabanı Projesi

Selam! Bu proje, kütüphane yönetim sistemi için hazırladığım SQL veri tabanı çalışmam. Okulda öğrendiklerimi pekiştirmek ve ilişkisel veri tabanı yönetimini daha iyi anlamak için bu projeyi geliştirdim.

Sadece düz tablolar oluşturup bırakmak istemedim; veri trafiğini rahatlatacak ve sorgu performansını artıracak farklı SQL yapılarını da projeye dahil  Projede Neler Var?

Kodları daha düzenli olması için 3 farklı dosya halinde yükledim:

1.`SQLQuery1.sql`Veri tabanını (`KutuphaneDB`) ve temel `Kitaplar` tablosunu oluşturup içine test edebilmek için örnek kitap verileri ekliyor.

2. `SQLQuery2.sql` `Yazarlar` ve `OduncTakip` gibi ilişkili tabloları kuruyor. Ayrıca arama hızını artırmak için **Index**, sanal tablo kolaylığı için **View**, kitap sayfa sayısına göre analiz yapan bir **Fonksiyon** ve silme işlemlerini takip eden bir **Trigger (Tetikleyici)** içeriyor.

3. `kutuphane_prosedürler.sql`Sürekli tekrarlanan ekleme ve listeleme işlemlerini otomatikleştirmek için yazdığım **Stored Procedure (Saklı Yordam)** kodlarını barındırıyor.

 Nasıl Çalıştırılır?

Dosyaları SQL Server (SSMS) üzerinde sırasıyla çalıştırarak sistemi kurabilirsiniz:
- Önce `SQLQuery1.sql` dosyasını çalıştırın.
- Ardından `SQLQuery2.sql` dosyasını çalıştırın.
- Son olarak `kutuphane_prosedürler.sql` dosyasını çalıştırarak prosedürleri sisteme tanımlayın.
