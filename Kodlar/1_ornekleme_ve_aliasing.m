% 1_ornekleme_ve_aliasing.m
% MDDE102 Sinyal İşleme - Hafta 3 Uygulaması
% GNU Octave ve MATLAB uyumludur.

clear all; close all; clc;

f_sinyal = 10; % Asıl sinyalin frekansı (10 Hz)
t_surekli = 0:0.001:0.5; % Analog sinyal için yüksek çözünürlüklü zaman
y_surekli = sin(2 * pi * f_sinyal * t_surekli);

% 1. Durum: Yeterli Örnekleme (Nyquist sağlanır: fs > 20 Hz)
fs_yeterli = 50; % 50 Hz örnekleme
t_yeterli = 0:1/fs_yeterli:0.5;
y_yeterli = sin(2 * pi * f_sinyal * t_yeterli);

% 2. Durum: Yetersiz Örnekleme (Aliasing oluşur: fs < 20 Hz)
fs_yetersiz = 13; % 13 Hz örnekleme (Nyquist ihlali)
t_yetersiz = 0:1/fs_yetersiz:0.5;
y_yetersiz = sin(2 * pi * f_sinyal * t_yetersiz);

% Grafikler
figure('Name', 'Örnekleme ve Aliasing');
subplot(2,1,1);
plot(t_surekli, y_surekli, 'b-', 'LineWidth', 1.5); hold on;
stem(t_yeterli, y_yeterli, 'g', 'filled', 'LineWidth', 1.5);
title('Yeterli Örnekleme (fs = 50 Hz)');
xlabel('Zaman (s)'); ylabel('Genlik');
legend('Analog Sinyal', 'Dijital Örnekler');

subplot(2,1,2);
plot(t_surekli, y_surekli, 'b-', 'LineWidth', 1.5); hold on;
stem(t_yetersiz, y_yetersiz, 'r', 'filled', 'LineWidth', 1.5);
plot(t_yetersiz, y_yetersiz, 'r--', 'LineWidth', 1); % Aliasing Zarfı
title('Yetersiz Örnekleme / Aliasing (fs = 13 Hz)');
xlabel('Zaman (s)'); ylabel('Genlik');
legend('Analog Sinyal', 'Hatalı Örnekler', 'Algılanan Sahte Sinyal');
