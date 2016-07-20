# 1001_latex_cls
latex'te 1001 Projeleri için başvuru formu hazırlamak için class

Ornek basvuru formu 1001_bf.tex dosyasında. 
\***ekle
ile biten komutlar, basvuru formundaki tablolara bilgi girmek için komutlar.

su anda en buyuk eksiklik, IP'lerini olustururken bir \***ekle gibi komut tanımlayamadim. şu anda her iş paket eklemek için
\expandafter\def\csname prjip1\endcsname
ile başlayan satırı çalıştırmak lazım. en sonundaki 1, sırasıyla 2,3, ... şeklinde arttırmak lazım. en sonunda da
\setcounter{projeipsayisi}{1}
komutunu girmek lazım. buradaki 1 yerine de kaç tane iş paketi tanımlandıysa, onun sayısı olması lazim.
tub1001.cls dosyasini açıp, 367. satıra bakarsanız, orada dbu işlerin kepsini \projeipekle diye bir komut tanımlayarak yapmayı denedim. 
ama oradaki denemelerim çalışmıyor. bir debepten \xintFor*, tabular'ın cell'lerini yaratmak için kullanamıyorum. rowlarını yaratmak için ise problem çıkarmıyor.
