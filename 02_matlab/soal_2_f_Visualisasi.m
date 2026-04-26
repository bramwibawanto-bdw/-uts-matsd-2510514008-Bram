% ======================================================
% UTS Matematika Sains Data – Soal 2 (f)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9, theta0=40, alpha=0.009
% ======================================================

clc; clear; close all;

% =========================
% Definisi Matriks P (citra asli)
% =========================
P = [120 58 200;
     80 2 18;
     38 90 170];

% =========================
% Definisi Matriks A (kunci enkripsi)
% =========================
A = [1 8 2;
     1 2 8;
     8 1 3];

% =========================
% Proses Enkripsi
% =========================
% Matriks E diperoleh dari perkalian A dengan P
E = A * P;

% =========================
% Menampilkan hasil matriks
% =========================
disp('Matriks P (Citra Asli):');
disp(P);

disp('Matriks E (Citra Terenkripsi):');
disp(E);

% =========================
% Visualisasi citra
% =========================
figure;

% Menampilkan citra asli
subplot(1,2,1)
imshow(P, [])
title('Citra Asli')

% Menampilkan citra hasil enkripsi
subplot(1,2,2)
imshow(E, [])
title('Citra Terenkripsi')