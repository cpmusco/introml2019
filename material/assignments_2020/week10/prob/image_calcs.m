I1 = zeros(5,5); I2 = zeros(5,5); I3 = zeros(5,5); I4 = zeros(5,5);
I1(2,2:4) = 1; I1(4,2:4) = 1; I1(3,2) = 1; I1(3,4) = 1;
I3(2,1:3) = 1; I3(4,1:3) = 1; I3(3,1) = 1; I3(3,3) = 1;
I2(2:4,3) = 1;
I4(2:4,4) = 1;

images = {I1,I2,I3,I4};


K = zeros(4,4);
for i = 1:4
    for j = 1:4
        K(i,j) = exp(-sum(sum((images{i} - images{j}).^2)));
    end
end

I1left = [I1(:,2:end)]
I1right = [I1(:,1:end-1)] 
I2left = [I2(:,2:end)]
I2right = [I2(:,1:end-1)] 
I3left = [I3(:,2:end)]
I3right = [I3(:,1:end-1)] 
I4left = [I4(:,2:end)]
I4right = [I4(:,1:end-1)] 

imagesleft = {I1left,I2left,I3left,I4left};
imagesright = {I1right,I2right,I3right,I4right};

K2 = zeros(4,4);
for i = 1:4
    for j = 1:4
        K2(i,j) = exp(-sum(sum((imagesright{i} - imagesright{j}).^2)));
        K2(i,j) = K2(i,j) + exp(-sum(sum((imagesleft{i} - imagesleft{j}).^2)));
        K2(i,j) = K2(i,j) + exp(-sum(sum((imagesright{i} - imagesleft{j}).^2)));
        K2(i,j) = K2(i,j) + exp(-sum(sum((imagesleft{i} - imagesright{j}).^2)));
    end
end