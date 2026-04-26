% ======================================================
% UTS Matematika Sains Data – Semester Genap 2025/2026
% Soal 1 – Eksplorasi Data Transaksi
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9, theta0=40, alpha=0.009
% Tanggal: 2026-04-26
% ======================================================

clc; clear; close all;

% Parameter personalisasi
N = 8; 
a = 0; 
b = 8; 
K = 9;
theta0 = 40; % derajat
alpha_lr = 0.009;

% =========================
% SOAL 1
% =========================

% Hitung D_i
D = zeros(1,7);
for i = 1:7
    D(i) = 20 + (K*i) + mod(a*i,7) - mod(b*i,5);
end

% Tampilkan hasil
disp('Data D_i:');
disp(D);

% Statistik
disp('Mean:'); disp(mean(D));
disp('Median:'); disp(median(D));
disp('Modus:'); disp(mode(D));
disp('Range:'); disp(range(D));
disp('Standar Deviasi (populasi):'); disp(std(D,1));

% Diagram batang
figure;
bar(D)
hold on
yline(mean(D),'r','LineWidth',2)

xlabel('Toko ke-i')
ylabel('Penjualan (juta rupiah)')
title('Penjualan Toko - NIM 2510514008')