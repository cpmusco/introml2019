m = loadMNISTImages('t10k-images-idx3-ubyte');
m = m';
n = size(m,1)
d = sqrt(784);
% means = mean(m,1);
means = zeros(1,size(m,2));
m = m - means;
imshow(reshape(m(1,:),d,d));
myshow = @(x) imshow(reshape(x+means,d,d));
myshow(m(1,:))

k = 200;
[U,S,V] = svd(m);

% myshow(U*S*V(1,:)')
% 
% mn = mean(V);
% myshow(U*S*randn(k,1)/sqrt(n));

h = 10;
w = 10;
bigimage = zeros(h*d,w*d);
for i=0:h-1
    for j = 0:w-1
        bigimage(1+i*d:i*d+d,1+j*d:j*d+d) = reshape(m(i*w + j + 1,:),d,d);
    end
end
figure()
imshow(bigimage)

s = diag(S);
errors = zeros(1,784);
for i = 1:784
    errors(i) = sum(s(i:end).^2);
end
plot(1:784,errors,'Linewidth',3)
ylabel('$\|X - X_k\|_F^2$','FontSize',16,'interpreter','latex');;
xlabel('rank $k$','FontSize',16,'interpreter','latex');

h = 10;
w = 10;
bigimage = zeros(h*d,w*d);
k = 30;
hatm = U(:,1:k)*S(1:k,1:k)*V(:,1:k)';
for i=0:h-1
    for j = 0:w-1
        bigimage(1+i*d:i*d+d,1+j*d:j*d+d) = reshape(hatm(i*w + j + 1,:),d,d);
    end
end
figure()
imshow(bigimage)

h = 5;
w = 4;
bigimage = zeros(h*d,w*d);
for i=0:h-1
    for j = 0:w-1
        sv = V(:,i*w + j + 1)';
        sv = sv*sign(sum(sv));
        minv = min(sv);
        maxv = max(sv);
        sv = (sv - minv)/(maxv-minv);
        bigimage(1+i*d:i*d+d,1+j*d:j*d+d) = reshape(sv,d,d);
    end
end
figure()
imshow(bigimage)

h = 10;
w = 10;
k = 12;
bigimage = zeros(h*d,w*d);
for i=0:h-1
    for j = 0:w-1
        sv = randn(1,k)*S(1:k,1:k)*V(:,1:k)'/sqrt(n);
        bigimage(1+i*d:i*d+d,1+j*d:j*d+d) = reshape(sv,d,d);
    end
end
figure()
imshow(bigimage)


corrupt = m(1,:) + (rand(1,784)>.95);
myshow(corrupt);

figure()
myshow(corrupt*V(:,1:20)*V(:,1:20)')

scatter(U(1:1000,1), U(1:1000,2))
