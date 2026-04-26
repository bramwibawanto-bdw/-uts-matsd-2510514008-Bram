% ======================================================
% UTS Matematika Sains Data – Soal 4 (e)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9, theta0=40, alpha=0.009
% ======================================================

clc; clear; close all;
disp(['Tanggal & Waktu Eksekusi: ', datestr(now)]);

theta0 = 40;
r = 2;

z0 = r * exp(1i * deg2rad((theta0)/3));
z1 = r * exp(1i * deg2rad((theta0+360)/3));
z2 = r * exp(1i * deg2rad((theta0+720)/3));

figure;
hold on; axis equal; grid on;

plot(real(z0), imag(z0), 'o')
plot(real(z1), imag(z1), 'o')
plot(real(z2), imag(z2), 'o')

plot([real(z0) real(z1) real(z2) real(z0)], ...
     [imag(z0) imag(z1) imag(z2) imag(z0)])

title('Akar Kubik di Bidang Argand')