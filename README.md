# 📡 MDDE102 Sinyal İşleme - Ders Materyalleri ve Sunum Arşivi

![LaTeX](https://img.shields.io/badge/LaTeX-Beamer-008080?style=flat-square&logo=latex)
![MATLAB](https://img.shields.io/badge/MATLAB-Simulation-e16737?style=flat-square&logo=mathworks)
![GNU Octave](https://img.shields.io/badge/GNU_Octave-Compatible-0251A2?style=flat-square&logo=gnu-octave)

Bu depo, **İstanbul Okan Üniversitesi Meslek Yüksekokulu, Elektronik Haberleşme Teknolojisi** programı kapsamında verilen **MDDE102 Sinyal İşleme** dersine ait güncel sunum dosyalarını (PDF), akademik notları, sınav çözümlerini, MATLAB/Octave simülasyon kodlarını ve bu dokümanların tamamının **LaTeX** kaynak kodlarını içermektedir.

## 📌 Ders Hakkında ve Pedagojik Hedef

Dersin temel odağı, ağır ve karmaşık matematiksel formalizm (karmaşık integraller ve diferansiyel denklemler) içinde kaybolmadan, modern haberleşme zincirindeki **(ADC $\rightarrow$ Filtre $\rightarrow$ Spektrum $\rightarrow$ Modülasyon)** sinyal işleme uygulamalarının mühendislik ve donanım perspektifiyle sezgisel olarak kavranmasıdır. 

Öğrencilerin, bir sensörden (örn. mikrofon, termometre, ivmeölçer) alınan analog verinin dijital ortama nasıl aktarıldığını, kuantalama hatalarından ve çevresel gürültüden nasıl arındırıldığını, frekans spektrumunda nasıl analiz edildiğini ve son olarak uzak mesafelere modüle edilerek nasıl iletildiğini pratik olarak anlamaları hedeflenmektedir.

## 📅 Haftalık Ders İzlencesi (Ana Modüller)

Ders materyalleri aşağıdaki mantıksal akışa göre modüllere ayrılmıştır:

* **Modül 1: Sinyal Temelleri ve Sistemler**
  * Analog ve Dijital sinyal kavramları, donanımsal karşılıklar.
  * Sistemlerin blok diyagramları (Seri/Paralel bağlantılar) ve temel sinyal operasyonları (zaman gecikmesi, ölçekleme).
* **Modül 2: Analog-Dijital Dönüşüm (ADC)**
  * Örnekleme (Sampling), Nyquist Teoremi ve Aliasing (Örtüşme) probleminin görsel/işitsel analizi.
  * Kuantalama, Bit Derinliği ve SNR (Sinyal-Gürültü Oranı) ilişkisi.
* **Modül 3: Dijital Filtre Temelleri**
  * Gürültü bastırma, Alçak Geçiren (LPF) filtre mantığı.
  * Hareketli Ortalama (Moving Average) filtresi ve zaman gecikmesi (Delay) ödünü.
  * FIR ve IIR filtre mimarilerinin temel felsefesi.
* **Modül 4: Frekans Spektrumu ve Bant Genişliği**
  * Zaman domeninden frekans domenine geçiş (Fourier vizyonu).
  * Saf sinüs ve kare dalga (harmonikler) spektrum analizi.
  * FFT tabanlı gerçek zamanlı spektrum okuma ve Bant Genişliği (BW) konsepti.
* **Modül 5: Modülasyon ve İletim**
  * AM ve FM modülasyonunun fiziksel amacı, taşıyıcı (Carrier) ve yan bantlar (LSB, USB).
  * Frekans Bölmeli Çoğullama (FDM) ve hat kodlamasının (örn. NRZ) temelleri.

## 🔬 Akademik Perspektif: Fizik ve Fotonik Analojileri

Soyut sinyal işleme kavramlarını somutlaştırmak ve çok disiplinli bir bakış açısı kazandırmak amacıyla, anlatımlarda fizik ve fotonik alanlarından çeşitli analojilere yer verilmektedir:
* **Kristal Yapılar ve Örnekleme:** Fotonik kristallerdeki kafes sabitinin (lattice constant, $a$), zaman domenindeki periyodik örnekleme aralığı ($T_s$) ile olan fiziksel benzerliği.
* **Dispersiyon ve Çok Yollu Yayılım:** Kablosuz haberleşmedeki yansımalar sonucu oluşan çok yollu yayılım (multipath) kaynaklı bozulmaların, fiber optik hatlardaki modal dispersiyon mekanizmaları ile ilişkisi.

## 📂 Depo İçeriği ve Yapısı

Aşağıdaki dizin yapısı, materyallerin organizasyonunu göstermektedir:

```text
📦 MDDE102-Sinyal-Isleme
 ┣ 📂 Latex_Source      # Sunumların derlenebilir LaTeX (main.tex) kaynak kodları ve TikZ çizimleri
 ┣ 📂 Notlar            # Ders içi PDF sunumlar, vize/final soru çözümleri ve akademik metinler
 ┣ 📂 Kodlar            # MATLAB ve GNU Octave ile uyumlu (.m) sinyal işleme simülasyonları
 ┗ 📜 README.md         # Depo tanıtım dosyası (Bu dosya)
