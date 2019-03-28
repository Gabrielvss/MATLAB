% captura o arquivo(nome e diretorio) 
[nome diretorio] = uigetfile('*.*', 'Abrir')

%constroi o endereço e le o arquivo no local
n = imread(fullfile(diretorio, nome));

%convertendo para tons de cinza
I = rgb2gray(n);

%comando edge para aplicar o filtro canny
imcanny = edge(I, 'canny');

%comando edge para aplicar o filtro sobel
imsobel = edge(I, 'sobel');

%comando edge para aplicar o filtro sobel
imprewitt = edge(I, 'prewitt');

%subplots
subplot(231);imshow(n);title('img principal');
subplot(232);imshow(imcanny);title('img canny');
subplot(233);imshow(imsobel);title('img sobel');
subplot(234);imshow(imprewitt);title('img prewitt');


