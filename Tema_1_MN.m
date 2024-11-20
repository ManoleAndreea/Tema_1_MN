% Tema 1 MN
% Manole Andreea - Cristina, 321AA

%   Scopul temei este de a constata experimental ca adunarea numerelor in
% virgula mobila nu este asociativa. Generati un vector x cu n = 100 de
% elemente folosind functia randn. Generati cel putin m = 10 permutari p ale
% intregilor de la 1 la n si calculati suma in ordinea data de permutare.

%   Cate rezultate diferite obtineti? 
%   Stiti care este cel corect? 
%   Cum puteti verifica experimental ca adunarea numerelor in virgula 
% mobila este comutativa?

n=100;
m=10;
x=randn(1, n); % am generat vectorul
suma=zeros(1, m);
for i=1:m
    p=randperm(n); % generam o permutare aleatoare de 100 de indici ai vectorului
    suma(i)=sum(x(p));% pentru fiecare permutare obtinuta calculam suma
end
format long
disp('Cele 10 sume calculate in urma permutarilor sunt:');
disp(suma); 

% Exemplu la o rulare : 
% 0.216381399267804   0.216381399267811  
% 0.216381399267804   0.216381399267805
% 0.216381399267804   0.216381399267806 
% 0.216381399267801   0.216381399267806  
% 0.216381399267803   0.216381399267806


% La o rulare am 6 rezultate diferite.

%   Consider ca pentru a afla care este cel mai aproape de a fi rezultatul
% corect trebuie sa calculam suma intr un anumit mod pentru a genera erori
% cat mai mici. Erorile mari apar atunci cand scadem doua numere cu valori
% apropiate.
%   Daca am intr o permutare doua numere aflate unul langa altul
% si cu valori apropriate, dar semne diferite, atunci se vor produce erori
% mari.
%   Pentru a rezolva aceasta problema o sa ordonez vectorul inainte de a ii
% calcula suma

sort(x);
suma_buna=sum(x);

disp('suma cea mai apropiata de cea corecta este:');
disp(suma_buna);

% Suma buna este : 0.216381399267805

%   Pentru a verifica experimental comutativitatea adunarii numerelor  cu
% virgula mobila o sa imi aleg doi vectori generati aleatoriu cu 100 de
% elemente, o sa adun prima data elementele primului vector cu cele ale
% celuilalt si dupa o sa fac suma elementelor, iar a doua oara invers, si o
% sa compar sumele finale.

v=randn(1, n);
w=randn(1, n);
suma_v1=v+w;
suma_w1=w+v;
suma_finala_v1=sum(suma_v1);
suma_finala_w1=sum(suma_w1);

disp('Rezultatul final al sumelor care au inceput cu vectorul w este:')
disp(suma_finala_w1);
disp('Rezultatul final al sumelor care au inceput cu vectorul v este:')
disp(suma_finala_v1);

%   Se observa ca rezultatele sunt aceleasi, ceea ce verifica comutativitatea
% numerelor cu virgula mobila











