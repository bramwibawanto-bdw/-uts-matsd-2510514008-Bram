% ======================================================
% UTS Matematika Sains Data – Soal 6.2 (e)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9, alpha=0.009
% ======================================================

clc; clear; close all;

disp('time stamp');
disp(datetime('now', 'Format', 'default'));

% =========================
% Parameter personalisasi
% =========================
N = 8; 
a = 0; 
b = 8; 
K = 9; 
alpha_lr = 0.009; 
iter = 500;

% =========================
% Fungsi Profit & Turunan
% =========================
% pi(x) = -x^3 + 117x^2 + 100x - 810
% pi'(x) = -3x^2 + 234x + 100
f_pi   = @(x) -x.^3 + 117*x.^2 + 100*x - 810;
f_grad = @(x) -3*x.^2 + 234*x + 100;

% =========================
% Inisialisasi
% =========================
x = 1.0; % x0
x_hist = zeros(iter+1, 1);
pi_hist = zeros(iter+1, 1);

x_hist(1) = x;
pi_hist(1) = f_pi(x);

% =========================
% Gradient Descent Loop
% =========================
for k = 1:iter
    x = x + alpha_lr * f_grad(x); % update rule
    x_hist(k+1) = x;
    pi_hist(k+1) = f_pi(x);
end

% =========================
% Plot Konvergensi
% =========================
k_vec = 0:iter;

figure('Color', 'w');
plot(k_vec, pi_hist, 'b', 'LineWidth', 1.5);
hold on; grid on;

% =========================
% Solusi Analitik (dari 6.1c)
% =========================
x_analitik = 78.425;
pi_optimum = f_pi(x_analitik);

yline(pi_optimum, 'r--', 'LineWidth', 1.5, ...
    'DisplayName', 'Optimum Analitik');

% =========================
% Titik Awal & Akhir
% =========================
plot(0, pi_hist(1), 'ko', 'MarkerSize', 8, ...
    'MarkerFaceColor','k', 'DisplayName','Titik Awal (x_0)');

plot(iter, pi_hist(end), 'gs', 'MarkerSize', 8, ...
    'MarkerFaceColor','g', 'DisplayName','Titik Akhir (x_{500})');

xlabel('Iterasi (k)');
ylabel('Profit \pi(x_k)');
title('Grafik Konvergensi Gradient Descent');

legend('Konvergensi GD', ...
       'Optimum Analitik', ...
       'Titik Awal', ...
       'Titik Akhir', ...
       'Location', 'best');

% =========================
% Output Perbandingan
% =========================
fprintf('\nNilai x akhir (x500): %.6f\n', x_hist(end));
fprintf('Nilai x optimal (analitik): %.6f\n', x_analitik);
fprintf('Selisih: %.6f\n', abs(x_hist(end) - x_analitik));