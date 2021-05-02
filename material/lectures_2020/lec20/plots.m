rgbImage = imread('nyu.jpg');
figure();
bwnyu = rgb2gray(im2double(rgbImage));
imshow(bwnyu);
[n,m] = size(bwnyu)
figure();
imshow(bwnyu(randperm(n),randperm(m)));
