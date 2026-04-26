% ======================================================
% UTS Matematika Sains Data – Soal 3 (b)
% ------------------------------------------------------
% Nama  : Bramantyo Danadyaksa Wibawanto
% NIM   : 2510514008
% Parameter: N=8, a=0, b=8, K=9, theta0=40, alpha=0.009
% ======================================================

clc; clear;

% Definisi himpunan
A = [8 10 12 15 18 21 23];
B = [11 13 15 18 20 26];
C = [9 15 18 19 25 28];
U = 8:28;

% =========================
% Operasi himpunan
% =========================

% A ∪ B ∪ C
unionABC = union(union(A,B),C);

% A ∩ B ∩ C
interABC = intersect(intersect(A,B),C);

% (A ∪ B) ∩ C'
A_union_B = union(A,B);
C_complement = setdiff(U,C);
result = intersect(A_union_B, C_complement);

% A ⊕ B
xorAB = setxor(A,B);

% =========================
% Output
% =========================
disp('A ∪ B ∪ C:'); disp(unionABC);
disp('Jumlah:'); disp(length(unionABC));

disp('A ∩ B ∩ C:'); disp(interABC);
disp('Jumlah:'); disp(length(interABC));

disp('(A ∪ B) ∩ C'':'); disp(result);
disp('Jumlah:'); disp(length(result));

disp('A ⊕ B:'); disp(xorAB);
disp('Jumlah:'); disp(length(xorAB));