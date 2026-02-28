MDDE102 Sinyal İşleme - Ders Sunumları 

Bu depo, İstanbul Okan Üniversitesi Meslek Yüksekokulu, Elektronik Haberleşme Teknolojileri programı kapsamında verilen MDDE102 Sinyal İşleme dersinin ilk 4 haftasına ait sunum dosyalarını içermektedir.

📌 Ders Hakkında

Dersin temel odağı, karmaşık matematiksel formalizmden ziyade haberleşme zinciri (ADC–Filtre–Spektrum–Modülasyon) bağlamında sinyal işleme uygulamalarıdır. Öğrencilerin haberleşme sistemlerindeki sinyal akışını sezgisel ve teknik olarak kavrayabilmeleri hedeflenmiştir.

📂 Sunum İçerikleri

[Hafta 1] Giriş ve Temel Kavramlar

Sinyal tanımı ve bilgi taşıma mantığı.

Analog ($x(t)$) ve Dijital ($x[n]$) dünyalar arasındaki temel farklar.

Ses, RF ve görüntü sinyalleri üzerine giriş.

[Hafta 2] Sistemler ve Blok Diyagramlar

Sistem kavramı ("Kara Kutu" mantığı).

Doğrusallık (Linearity) ve Zamanla Değişmezlik (Time-Invariance).

Blok diyagram okuma: Kazanç, gecikme, seri ve paralel bağlantılar.

Nedensellik (Causality) ve gerçek zamanlı sistemler.

[Hafta 3] Analog-Dijital Dönüşüm (ADC) I: Örnekleme

Örnekleme (Sampling) teorisi.

Nyquist-Shannon Teoremi: $f_s \ge 2 f_{\max}$.

Aliasing (Örtüşme) hatası ve Anti-Aliasing filtrelerinin önemi.

Pratik örnekler: Telefon (8 kHz) ve CD (44.1 kHz) standartları.

[Hafta 4] Analog-Dijital Dönüşüm (ADC) II: Kuantalama

Kuantalama (Quantization) ve genlik ayrıklaştırma.

Bit Derinliği (Bit Depth) ve çözünürlük ilişkisi ($L = 2^N$).

Sinyal-Gürültü Oranı (SNR) kavramı.

6 dB Kuralı: $SNR_{dB} \approx 6.02N + 1.76$.

🛠 Teknik Detaylar

Sunumlar yüksek dizgi kalitesi ve vektörel grafikler için LaTeX (Beamer) kullanılarak hazırlanmıştır.

Motor: XeLaTeX (Türkçe karakter desteği ve modern fontlar için).

Paketler: TikZ ve pgfplots (Blok diyagramlar ve sinyal grafikleri için).

Tema: Madrid / Dolphin.

Derleme Talimatı

Sunumları yerel makinenizde derlemek için:

xelatex hafta_x.tex


🔬 Akademik Notlar & Analojiler

Ders anlatımında, fotonik ve elektromanyetik parametre modelleme perspektifiyle aşağıdaki analojilere yer verilmektedir:

Kristal Yapılar: Fotonik kristallerdeki latis sabitinin ($a$), örnekleme periyodu ($T_s$) ile benzerliği.

Dispersiyon: Çok yollu yayılımın (multipath), fiber optik hatlardaki modal dispersiyon ile ilişkisi.
