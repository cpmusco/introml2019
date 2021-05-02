m = loadMNISTImages('t10k-images-idx3-ubyte');
n = size(m,2)
d = sqrt(784);
means = mean(m,2);
means = zeros(size(means));
m = m - means;
imshow(reshape(m(:,1),d,d));
myshow = @(x) imshow(reshape(x+means,d,d));
myshow(m(:,1))

k = 15;
[U,S,V] = svds(m,k);

% myshow(U*S*V(1,:)')
% 
% mn = mean(V);
% myshow(U*S*randn(k,1)/sqrt(n));

h = 20;
w = 40;
bigimage = zeros(h*d,w*d);
for i=0:h-1
    for j = 0:w-1
        bigimage(1+i*d:i*d+d,1+j*d:j*d+d) = reshape(U*S*randn(k,1)/sqrt(n),d,d);
    end
end
figure()
imshow(bigimage)


corrupt = m(:,1) + (rand(784,1)>.9);
myshow(corrupt);

myshow(U*U'*corrupt)