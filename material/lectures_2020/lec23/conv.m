sign = im2double(imread('stop_conv_m.png'));
signpic = im2double(imread('stop_m.png'));
normpic = 1.0*signpic(:,:,1)./sum(signpic,3);
normpic(isnan(normpic))=0
imshow(normpic)

scorepic = xcorr2(normpic,sign(:,:,1));

m = max(max(scorepic));
scorepic = scorepic/m;
imshow(scorepic);

sign = im2double(imread('stop_conv_m.png'));
signpic = im2double(imresize(imread('manysigns.jpeg'),3));
figure();
imshow(sign);
figure();
imshow(signpic);

normpic = 1.0*signpic(:,:,1)./sum(signpic,3);
normpic(isnan(normpic))=0
imshow(normpic)

scorepic = xcorr2(normpic,sign(:,:,1));

scorepic = scorepic/m;
imshow(scorepic);



sign = sum(im2double(imread('sign_m.png')),3)/3;
signpic = sum(im2double(imread('t_m.png')),3)/3;
figure();
imshow(sign);
figure();
imshow(signpic);

scorepic = xcorr2(signpic(:,:,1),sign(:,:,1));

scorepic = scorepic/max(max(scorepic));
imshow(scorepic);


% edge detection
lake = sum(im2double(imresize(imread('lake1.jpeg'),3)),3)/3;
sobel = [1,0,-1;2,0,-2;1,0,-1];
figure();
imshow(lake);
lakeedge = xcorr2(lake,sobel);
figure();
imshow(rescale(lakeedge));

sobel2 = [1,2,1;0,0,0;-1,-2,-1];

nyc = sum(im2double(imread('new_york.jpeg')),3)/3;
figure();
imshow(nyc);
nycedge = xcorr2(nyc,sobel);
figure();
imshow(rescale(nycedge));

d = 60
vert = ones(d,1);
lakevert = xcorr2(lakeedge,vert)/d;
figure();
imshow(lakevert);
nycvert = xcorr2(nycedge,vert)/d;
figure();
imshow(nycvert);

mean(mean(abs(nycvert)))
mean(mean(abs(lakevert)))

sobel2 = [1,2,1;0,0,0;-1,-2,-1];

zero = sum(im2double(imresize(imread('zero.png'),1/10)),3)/3;
figure();
imshow(zero)
for i = 1:10
    for j = 1:10
        z = max(max(zero(i*2-1:i*2,j*2-1:j*2)));
        zero(i*2-1:i*2,j*2-1:j*2) = z;
    end
end
figure();
imshow(zero)

mnist = sum(im2double(imread('mnist_block.png')),3)/3;
figure()
imshow(mnist)
for i = 1:68
    for j = 1:126
        z = max(max(mnist(i*2-1:i*2,j*2-1:j*2)));
        mnist(i*2-1:i*2,j*2-1:j*2) = z;
    end
end
figure();
imshow(mnist)
