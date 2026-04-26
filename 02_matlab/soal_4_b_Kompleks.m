% ======================================================
% UTS Matematika Sains Data – Soal 4 (b)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9, theta0=40, alpha=0.009
% ======================================================

clc; clear;

disp(['Tanggal & Waktu Eksekusi: ', datestr(now)]);
disp('--- Verifikasi Soal 4 (b) ---');

% =========================
% Definisi bilangan kompleks
% =========================
z1 = 2 + 9i;
z2 = 9 - 2i;

% =========================
% Operasi
% =========================

% Penjumlahan
hasil_tambah = z1 + z2;

% Perkalian
hasil_kali = z1 * z2;

% Pembagian
hasil_bagi = z1 / z2;

% Nilai mutlak selisih
hasil_abs = abs(z1 - z2);

% =========================
% Output
% =========================
fprintf('z1 = %.2f + %.2fi\n', real(z1), imag(z1));
fprintf('z2 = %.2f + %.2fi\n\n', real(z2), imag(z2));

fprintf('z1 + z2 = %.2f + %.2fi\n', real(hasil_tambah), imag(hasil_tambah));
fprintf('z1 * z2 = %.2f + %.2fi\n', real(hasil_kali), imag(hasil_kali));
fprintf('z1 / z2 = %.2f + %.2fi\n', real(hasil_bagi), imag(hasil_bagi));
fprintf('|z1 - z2| = %.4f\n', hasil_abs);