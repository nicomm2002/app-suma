% Leer archivo .json
jsonData = jsondecode(fileread('config.json'));

% Obtener el valor de t1
t4 = jsonData.n1;

suma = 1 + t4;

% Mostrar la suma
disp(['La suma de 1 + t1 es: ',(suma)]);

save('out_dir/suma.mat','suma')

