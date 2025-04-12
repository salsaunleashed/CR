% Conversão das imagens em vetores binários

function [X, Y] = upload_img(folder, type, new_dim)

X = [];
Y = [];
numType = numel(type);

for i = 1 : numType
    files = dir(fullfile(folder, type{i}, "*.png"));
    for j = 1 : length(files)
        path = fullfile(file(j).folder, file(j).name);
        img = imread(path);
        bin = convertBinary(img, new_dim);
        x = [x reshape(bin[], 1)];
        y = zeros(numType, 1);
        y(i) = 1;
        Y = [Y, y];
    end
end
end

