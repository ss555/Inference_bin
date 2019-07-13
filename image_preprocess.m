% Get all PDF files in the current folder
cd D:\ROBOTICS_NANODEGREE\RBND_2TERM\BACS\BIG-BAG;
counter=0;
files = dir('*.jpg');
% Loop through each
for id = 1:length(files)
    counter=counter+1;
    I1=imread(files(id).name);
    I2 = imresize(I1,[256 256]); 
    %In=rgb2gray(I2); % use if the image containing RGB value 3
    %figure;imshow(I2);
    imwrite(I2,strcat('BIG',int2str(counter),'.jpg'));
end