
%ler a base de dados a ser trabalhada
x = load('iris.dat');

%aplica o algoritmo kmeas
[idx, c, sumd, d] = kmeans(x,3);

%visualiza os classificados pelo algoritimo
plot(x(idx==1,1), x(idx==1,2), 'r.', 'MarkerSize', 12);

hold on; plot(x(idx==2,1), x(idx==2,2), 'g.', 'MarkerSize', 12);
    
hold on; plot(x(idx==3,1), x(idx==3,2), 'b.', 'MarkerSize', 12);

%colocar marcadores nos centroides 
plot(c(:,1), c(:,2), 'kx', 'MarkerSize', 14, 'LineWidth', 2);
plot(c(:,1), c(:,2), 'ko', 'MarkerSize', 14, 'LineWidth', 2);

%apresnta legenda dos pontos
legend('Classe1', 'Calsse2', 'Classe3', 'Centros','Locations', 'NothEastOut');
 