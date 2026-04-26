% ======================================================
% UTS Matematika Sains Data – Soal 2 (d)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9, theta0=40, alpha=0.009
% ======================================================

clc; clear; close all;

% Matriks A
A = [1 8 2;
     1 2 8;
     8 1 3];

disp('Matriks A:');
disp(A);

% Invers manual
A_inv_manual = (1/456)*[-2 -22 60;
                         61 -13 -6;
                        -15 63 -6];

disp('Invers Manual:');
disp(A_inv_manual);

% Invers MATLAB
A_inv_matlab = inv(A);

disp('Invers MATLAB:');
disp(A_inv_matlab);

% Hitung error Frobenius
error = norm(A_inv_manual - A_inv_matlab, 'fro');

disp('Error Frobenius:');
disp(error);

% Validasi hasil
if error < 1e-10
    disp('KESIMPULAN: Invers manual VALID (error < 1e-10)');
else
    disp('KESIMPULAN: Invers manual TIDAK VALID');
end