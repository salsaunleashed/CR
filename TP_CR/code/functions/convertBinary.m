% Faz a conversão para binário e redimenciona

function toBin = convertBinary(img, new_dim)

if size(img, 3) == 3
    img = rgb2gray(img);
end

    img = imresize(img, new_dim);
    bin = imbinarize(img);

end
