% 
% 
% %author:coplin  
% %time:2016-10-10  
% %function:change the size of Image.  
% addpath('c');  
% addpath('t');  
% ListName=dir('c\*.jpg');  
% [Pm,Pn]=size(ListName);  
% for iPm=1:1:Pm %��ȡ�ļ�������ͼƬѭ��      
% oriImg=imread(ListName(iPm).name);    %readImg  
% cutImg=imresize(oriImg,[460,360]);
% %cutImg=imcrop(oriImg,[50,50,255,255]);  
% %bi=imresize(oriImg,0.6);        %bi����Ϊai��0.6��  
% %endImg=imresize(cutImg,[256,256]);         %��aiת��256x256�Ĵ�С  
% iDealName=ListName(iPm).name;  
% iDealAddress='t\';  
% iDealAll=strcat(iDealAddress,iDealName);  
% ID=imresize(cutImg,1);  
% imwrite(ID,iDealAll);  
% end
%% ������jpg�ļ�
clc;clear;close all;
files = dir('C:\Users\Administrator\Desktop\e\c\*.jpg');
for i = 1 : numel(files)
    oldname = files(i).name;
    I = imread(['C:\Users\Administrator\Desktop\e\c\' oldname]);
    if i<10
        newname = strcat(num2str(i),'.jpg');% �����ַ���
        imwrite(I,['C:\Users\Administrator\Desktop\e\c\' newname],'jpg');% ��I��jpg��ʽ����������ͼ������Ϊnewname
    elseif i>=10&&i<100
        newname = strcat('00',num2str(i),'.jpg');
        imwrite(I,['C:\Users\Administrator\Desktop\e\c\' newname],'jpg');
    elseif i>=100
        newname = strcat('0',num2str(i),'.jpg');
        imwrite(I,['C:\Users\Administrator\Desktop\e\c\' newname],'jpg');
    end
end
