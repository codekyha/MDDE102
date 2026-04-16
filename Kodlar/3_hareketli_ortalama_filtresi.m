% 3_hareketli_ortalama_filtresi.m
% MDDE102 Sinyal İşleme - Hafta 7 Uygulaması
% GNU Octave ve MATLAB uyumludur.

clear all; close all; clc;

n = 1:200; % Örnek (zaman) indeksi
temiz_sinyal = 20 + 5 * sin(2 * pi * 0.01 * n); % 20 derece ortalamalı sıcaklık değişimi
gurultu = 2 * randn(1, length(n)); % Sensör gürültüsü
sensor_verisi = temiz_sinyal + gurultu;

% Hareketli Ortalama Filtresi (M = 10 Pencere Boyutu)
M = 10;
b = ones(1, M) / M; % Filtre katsayıları: h[n] = [1/10, 1/10 ... 1/10]
a = 1; % FIR filtre olduğu için a=1

% Filtreleme işlemi
filtrelenmis_veri = filter(b, a, sensor_verisi);

% Grafikler
figure('Name', 'Gürültü Bastırma');
plot(n, sensor_verisi, 'Color', [0.7 0.7 0.7], 'LineWidth', 1); hold on;
plot(n, temiz_sinyal, 'b--', 'LineWidth', 2);
plot(n, filtrelenmis_veri, 'r', 'LineWidth', 2);
title('Hareketli Ortalama (Moving Average) Filtresi ile Gürültü Temizleme');
xlabel('Örnek Numarası (n)'); ylabel('Sıcaklık (°C)');
legend('Gürültülü Sensör Verisi', 'Asıl Sıcaklık (Temiz)', 'Filtrelenmiş Çıkış (Gecikmeli)');
grid on;
