norm_img = double(imread('./images/robin.jpg')) ./255;
grey_img = norm_img(:,:,1)*0.30 + norm_img(:,:,2)*0.59 + norm_img(:,:,3)*0.11;

sobel_kernal_x = [1 2 1 ; 0 0 0 ; -1 -2 -1] ./ 4;
sobel_kernal_y = sobel_kernal_x';

dx = conv2(grey_img, sobel_kernal_x,'same'); 
dy = conv2(grey_img, sobel_kernal_y,'same'); 

mag = sqrt (dx.^2 + dy.^2); 
imgshow(mag);

thresholded = (mag >0.1);
imgshow(thresholded); 
