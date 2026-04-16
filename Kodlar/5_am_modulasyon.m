% 5_am_modulasyon.m
% MDDE102 Sinyal İşleme - Hafta 11 Uygulaması
% GNU Octave ve MATLAB uyumludur.

clear all; close all; clc;

fs = 10000; % Yüksek örnekleme hızı
t = 0:1/fs:0.05; % 50 ms'lik zaman aralığı

fm = 50;   % Bilgi sinyali frekansı (50 Hz - Alçak Frekans)
fc = 1000; % Taşıyıcı sinyal frekansı (1 kHz - Yüksek Frekans)
Am = 0.6;  % Modülasyon indeksi (Bilgi sinyali genliği)

% Sinyallerin Üretilmesi
bilgi = Am * sin(2 * pi * fm * t);
tasiyici = sin(2 * pi * fc * t);

% Genlik Modülasyonu (AM) Denklemi: y(t) = [1 + m(t)] * c(t)
am_sinyali = (1 + bilgi) .* tasiyici;

% Zarf hesaplama (Görselleştirme için)
ust_zarf = 1 + bilgi;
alt_zarf = -(1 + bilgi);

% Grafikler
figure('Name', 'Genlik Modülasyonu (AM)');
subplot(3,1,1);
plot(t, bilgi, 'b', 'LineWidth', 2);
title('Bilgi Sinyali (Baseband - 50 Hz)');
xlabel('Zaman (s)'); ylabel('Genlik');

subplot(3,1,2);
plot(t, tasiyici, 'r');
title('Taşıyıcı Sinyal (Carrier - 1000 Hz)');
xlabel('Zaman (s)'); ylabel('Genlik');

subplot(3,1,3);
plot(t, am_sinyali, 'k'); hold on;
plot(t, ust_zarf, 'b--', 'LineWidth', 1.5); % Zarfı çiz çiz
plot(t, alt_zarf, 'b--', 'LineWidth', 1.5);
title('Genlik Modülasyonlu (AM) Sinyal ve Zarfı');
xlabel('Zaman (s)'); ylabel('Genlik');
