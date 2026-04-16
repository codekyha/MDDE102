% 4_fft_frekans_spektrumu.m
% MDDE102 Sinyal İşleme - Hafta 10 Uygulaması
% GNU Octave ve MATLAB uyumludur.

clear all; close all; clc;

Fs = 1000;            % Örnekleme Frekansı (1 kHz)
T = 1/Fs;             % Örnekleme Periyodu
L = 1500;             % Toplam Örnek Sayısı
t = (0:L-1)*T;        % Zaman Vektörü

% İçinde 50 Hz ve 120 Hz olan iki sinyalin birleşimi ve rastgele gürültü eklenmesi
S = 0.7*sin(2*pi*50*t) + 1.2*sin(2*pi*120*t);
X = S + 1.5*randn(size(t)); % Gürültülü Sinyal

% FFT (Fourier Dönüşümü) İşlemi
Y = fft(X);
P2 = abs(Y/L);        % Çift taraflı genlik spektrumu
P1 = P2(1:L/2+1);     % Tek taraflı genlik spektrumuna çevirme
P1(2:end-1) = 2*P1(2:end-1); 
f = Fs*(0:(L/2))/L;   % Frekans ekseni (x ekseni) oluşturma

% Grafikler
figure('Name', 'FFT Analizi');
subplot(2,1,1);
plot(t(1:200), X(1:200), 'b'); % Zaman uzayının sadece bir kısmını göster
title('Zaman Uzayı: Gürültülü Karmaşık Sinyal');
xlabel('Zaman (t)'); ylabel('Genlik (V)');
grid on;

subplot(2,1,2);
plot(f, P1, 'r', 'LineWidth', 1.5);
title('Frekans Uzayı (Spektrum Analizi): İçerideki Gizli Frekanslar');
xlabel('Frekans (Hz)'); ylabel('Genlik (|P1(f)|)');
xlim([0 200]); % Sadece 0-200 Hz arasını göster
grid on;
