clc,clear,close all

image_path = 'D:\joy\program\image_process_lesson\image_processing_theory_and_application\project_3\P16091177_project_3\IMG_0045.JPG';
img = imread(image_path);
ori_img = im2double(img);
img = rgb2gray(img);
thres_img = adaptthresh(img, 0.75);
img = im2double(img) < thres_img;

figure(1);
imshow(img)
title('Original image')

% 填補內部縫隙
figure(2)
se = strel('disk', 3);
se90 = strel('line',3,90);
se0 = strel('line',3,0);

img = imdilate(img,[se90 se0]);
img = imclose(img, se);
img = imfill(img,'holes');
imshow(img)
title('Morphological image processing')


figure(3)
n =  8;
[label_img,num] = bwlabel(img,n);

for i = 1:num
    image = label_img(i);
    ind=find(label_img==i);
    if length(ind)<2500
       label_img(ind)=0;
    end
end

se = strel('disk', 5);
label_img = imopen(label_img, se);
imshow(label_img)
title('Filter out image noise')

figure(4)
BWoutline = bwperim(label_img, 8);
Segout = ori_img; 
Segout(BWoutline) = 255; 

imshow(Segout)
title('Marking Image')



