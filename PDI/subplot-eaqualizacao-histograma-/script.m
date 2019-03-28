%capturando imagem(nome e diretorio) da memoria
[nome diretorio] = uigetfile('*.*', 'abrir')

%constroi o endereço do local
local = fullfile(diretorio, nome);

%ler arquivo no local
n = imread(local);

%converter a img de RGB para tons de cinza
I = rgb2gray(n);

%equalizando a img
Eq = histeq(I);

subplot(2,3,1);imshow(n); title('img entrada');
subplot(2,3,2);imshow(I); title('img tons de cinza');
subplot(2,3,4);imhist(I); title('histograma da img_gray');
subplot(2,3,3);imshow(Eq); title('img equalizada');
subplot(2,3,5);imhist(Eq); title('histograma equalizada');




