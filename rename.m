% 
% 
% %author:coplin  
% %time:2016-10-10  
% %function:change the size of Image.  
% addpath('c');  
% addpath('t');  
% ListName=dir('c\*.jpg');  
% [Pm,Pn]=size(ListName);  
% for iPm=1:1:Pm %读取文件夹所有图片循环      
% oriImg=imread(ListName(iPm).name);    %readImg  
% cutImg=imresize(oriImg,[460,360]);
% %cutImg=imcrop(oriImg,[50,50,255,255]);  
% %bi=imresize(oriImg,0.6);        %bi缩放为ai的0.6倍  
% %endImg=imresize(cutImg,[256,256]);         %把ai转成256x256的大小  
% iDealName=ListName(iPm).name;  
% iDealAddress='t\';  
% iDealAll=strcat(iDealAddress,iDealName);  
% ID=imresize(cutImg,1);  
% imwrite(ID,iDealAll);  
% end
%% 重命名jpg文件
clc;clear;close all;
files = dir('C:\Users\Administrator\Desktop\e\c\*.jpg');
for i = 1 : numel(files)
    oldname = files(i).name;
    I = imread(['C:\Users\Administrator\Desktop\e\c\' oldname]);
    if i<10
        newname = strcat(num2str(i),'.jpg');% 连接字符串
        imwrite(I,['C:\Users\Administrator\Desktop\e\c\' newname],'jpg');% 将I以jpg格式保存起来，图像名字为newname
    elseif i>=10&&i<100
        newname = strcat('00',num2str(i),'.jpg');
        imwrite(I,['C:\Users\Administrator\Desktop\e\c\' newname],'jpg');
    elseif i>=100
        newname = strcat('0',num2str(i),'.jpg');
        imwrite(I,['C:\Users\Administrator\Desktop\e\c\' newname],'jpg');
    end
end
