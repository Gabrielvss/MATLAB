% captura o arquivo(nome e diretorio) 
[nome diretorio] = uigetfile('*.*', 'Abrir')

%constroi o endereço e le o arquivo no local
n = imread(fullfile(diretorio, nome));

%convertendo para unit8
b_R = uint8(zeros(size(n)));
b_G = uint8(zeros(size(n)));
b_B = uint8(zeros(size(n)));

%atrubuir ao primeiro plano da imagem 
%o primeiro plano da img original
b_R(:,:,1)=n(:,:,1);
b_G(:,:,2)=n(:,:,2);
b_B(:,:,3)=n(:,:,3);

%plotando as imagens coloridas
subplot(231);imshow(b_R);title('imgR')
subplot(232);imshow(b_G);title('imgG')
subplot(233);imshow(b_B);title('imgB')




