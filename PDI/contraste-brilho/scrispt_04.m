[nome diretorio] = uigetfile('*.*', 'Abrir');

n = imread(fullfile(diretorio,nome));
subplot(231);imshow(n);title('img original');

%tranformar valores proximos de 255 em valores
%proximos de zero e virce-ver�a.(255 - img)
y = uint8(255 - double(n));
subplot(232);imshow(y);title('img negativa');

%para aumentar ou dimunir o brilho
%� somado ou subtraido uma constante
z = n +50;  
w = n -50;
subplot(233);imshow(z);title('img mais brilho');
subplot(234);imshow(w);title('img menos brilho');

%para alterar o contraste criamos um limiar
limiar = 150;

%dividimos a imagem por esse  limiar logo os valores entre
%0 e 1 sao menores que o limiar e do em diante sao os maiores
B = double(n)/limiar;
B = B.^2;
subplot(235);imshow(B);title('mais contraste');