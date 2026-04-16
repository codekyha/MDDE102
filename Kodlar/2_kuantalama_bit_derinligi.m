% 2_kuantalama_bit_derinligi.m
% MDDE102 Sinyal İşleme - Hafta 4 Uygulaması
% GNU Octave ve MATLAB uyumludur.

clear all; close all; clc;

t = 0:0.005:1; % Zaman vektörü
y_orijinal = 5 * sin(2 * pi * 1 * t); % Genliği 5V olan 1 Hz sinyal

% 3-Bit Kuantalama (2^3 = 8 Seviye)
N_bit = 3; 
seviye_sayisi = 2^N_bit;

% Sinyali 0 ile 1 arasına normalize et, seviye sayısıyla çarp ve yuvarla
y_norm = (y_orijinal - min(y_orijinal)) / (max(y_orijinal) - min(y_orijinal));
y_kuantali = round(y_norm * (seviye_sayisi - 1));

% Yuvarlanmış sinyali tekrar orijinal voltaj aralığına çevir
y_kuantali = y_kuantali / (seviye_sayisi - 1) * (max(y_orijinal) - min(y_orijinal)) + min(y_orijinal);

% Grafikler
figure('Name', 'Kuantalama Etkisi');
plot(t, y_orijinal, 'b--', 'LineWidth', 1.5); hold on;
stairs(t, y_kuantali, 'r', 'LineWidth', 2);
title(['3-Bit Kuantalama (', num2str(seviye_sayisi), ' Seviye)']);
xlabel('Zaman (s)'); ylabel('Voltaj (V)');
legend('Orijinal Analog Sinyal', 'Kuantalanmış Dijital Sinyal');
grid on;
