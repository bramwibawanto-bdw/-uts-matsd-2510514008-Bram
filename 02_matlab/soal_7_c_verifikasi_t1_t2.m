% ======================================================
% UTS Matematika Sains Data – Soal 7 (c)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9
% ======================================================

clc; clear;

disp('time stamp');
disp(datetime('now', 'Format', 'default'));

% =========================
% Parameter
% =========================
a = 0;
K = 9;
n = 1:12;

% =========================
% Data penjualan
% =========================
S = 50 + K*n + (-1).^n * (a+1);

% =========================
% Hitung Sigma
% =========================
T1 = sum(S);        % Σ S_n
T2 = sum(S.^2);     % Σ S_n^2

% =========================
% Output
% =========================
fprintf('\nHasil Perhitungan:\n');
fprintf('T1 = Σ S_n     = %d\n', T1);
fprintf('T2 = Σ S_n^2   = %d\n', T2);