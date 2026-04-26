% ======================================================
% UTS Matematika Sains Data – Soal 3 (d)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9, theta0=40, alpha=0.009
% ======================================================

clc; clear;

disp(['Tanggal & Waktu Eksekusi: ', datestr(now)]);
disp('--- Verifikasi Soal 3.d ---');

% Mendefinisikan variabel simbolik
syms x

% Mendefinisikan fungsi awal f(x)
f = 9*x + 8;

% Mencari invers menggunakan finverse
f_inv = finverse(f);
fprintf('Invers fungsi f^-1(x) adalah: %s\n', char(f_inv));

% =========================
% Parameter
% =========================
K = 9;
a = 0;
b = 8;

% Target pendapatan
target_rev = K * 100 + a + b; % = 908

% Substitusi ke fungsi invers
volume_x = subs(f_inv, x, target_rev);

% Menampilkan hasil
fprintf('Target Pendapatan (ribu Rp): %d\n', target_rev);
fprintf('Volume Pembelian (unit): %s\n', char(volume_x));