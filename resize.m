% img=imread('2.jpg');
% i=imresize(img,[400,300]);
% imwrite(i,'22.jpg');


%author:coplin  
%time:2016-10-10  
%function:change the size of Image.  
addpath('fish\gray\w');  
addpath('t');  
ListName=dir('fish\gray\w\*.jpg');  
[Pm,Pn]=size(ListName);  
for iPm=1:1:Pm %��ȡ�ļ�������ͼƬѭ��      
oriImg=imread(ListName(iPm).name);    %readImg  
cutImg=imresize(oriImg,[360,560]);
%cutImg=imcrop(oriImg,[50,50,255,255]);  
%bi=imresize(oriImg,0.6);        %bi����Ϊai��0.6��  
%endImg=imresize(cutImg,[256,256]);         %��aiת��256x256�Ĵ�С  
iDealName=ListName(iPm).name;  
iDealAddress='t\';  
iDealAll=strcat(iDealAddress,iDealName);  
ID=imresize(cutImg,1);  
imwrite(ID,iDealAll);  
end
