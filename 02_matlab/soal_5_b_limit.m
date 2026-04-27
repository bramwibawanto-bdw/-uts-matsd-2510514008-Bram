% ======================================================
% UTS Matematika Sains Data – Soal 5.1 (b)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9, theta0=40, alpha=0.009
% ======================================================

clc; clear;

disp('time stamp');
disp(datetime('now', 'Format', 'default'));
disp('--- Verifikasi Soal 5.1 (b) ---');

syms x

% Parameter
K = 9; 
a = 0; 
b = 8;

% =========================
% Definisi limit
% =========================

L1 = limit((x^2 - K^2)/(x - K), x, K);
L2 = limit((sqrt(x + (K+1)^2) - (K+1))/x, x, 0);
L3 = limit(((a+2)*x^3 + b*x + 7)/(x^3 - x + K), x, inf);

% =========================
% Output
% =========================

fprintf('L1 = %s\n', char(L1));
fprintf('L2 = %s\n', char(L2));
fprintf('L3 = %s\n', char(L3));