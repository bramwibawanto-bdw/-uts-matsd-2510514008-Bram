% ======================================================
% UTS Matematika Sains Data – Soal 5.4 (g)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9
% ======================================================

clc; clear; close all;

disp('time stamp');
disp(datetime('now', 'Format', 'default'));

% Parameter
K = 9;
a = 0;
p = 18;
q = 18;

% Fungsi
f1 = @(x) (x.^2 - K^2)./(x - K); % x < K
f3 = @(x) a*x + q;               % x > K

% Range
x1 = linspace(0, K-0.01, 100);
x3 = linspace(K+0.01, 2*K, 100);

y1 = f1(x1);
y3 = f3(x3);

figure;
hold on; grid on;

% Kurva utama
plot(x1, y1, 'b', 'LineWidth', 2)
plot(x3, y3, 'b', 'LineWidth', 2)

% Garis vertikal di x = K
xline(K, '--r', 'LineWidth', 1.5)

% Titik sambung (K, p)
plot(K, p, 'o', ...
    'MarkerSize', 10, ...
    'MarkerFaceColor', 'y', ...
    'MarkerEdgeColor', 'r')

% Anotasi teks vertikal
text(K+0.2, p+5, 'Titik Sambungan (x = K)', ...
    'Color', 'r', 'Rotation', 90)

% Judul dan label
title('Kekontinuan Fungsi Biaya C(x)')
xlabel('Jumlah Produksi (x)')
ylabel('Biaya Distribusi C(x)')

% Legend
legend('Kurva Fungsi C(x)', ...
       'Batas Kontinuitas (x = K)', ...
       'Titik Temu (K, p)', ...
       'Location', 'northwest')

xlim([0 2*K])