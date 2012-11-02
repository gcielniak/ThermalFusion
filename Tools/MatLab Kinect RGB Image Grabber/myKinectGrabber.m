% myKinectConnector
% Get RGB and DEPTH image, then convert uvZ[pix,pix,mm] value to XYZ[mm,mm,mm]

close all; clear all;
addpath('./myKinectGrabber-OpenNI/Mex');
%% Create context with xml file
context = mxNiCreateContext('myKinectGrabber-OpenNI/Config/SamplesConfig_HighRes.xml');

%%  Initialise FIGURE
width = 640; height = 480;
width1 = 1280; height1 = 1024;
% rgb image
figure, h2 = imagesc(zeros(height1,width1,3,'uint8'));

%% LOOP
for k=1:1
    tic
    %align Depth onto RGB
    option.adjust_view_point = true;
    % Acquire RGB and Depth image    
    mxNiUpdateContext(context, option);
    [rgb, depth] = mxNiImage(context);
    % convert uvZ[pix,pix,mm] to XYZ[mm,mm,mm]
    real_XYZ = mxNiConvertProjectiveToRealWorld(context, depth); 
    %convert XYZ[mm,mm,mm] to uvZ[pix,pix,mm]
    projective_uvZ = mxNiConvertRealWorldToProjective(context, real_XYZ);     
    % update Figure
    set(h2, 'CData', rgb);
    drawnow;
    % FPS
    disp(['itr=' sprintf('%d',k) , ' : FPS=' sprintf('%f',1/toc)]);
end

%% Delete the context object 
mxNiDeleteContext(context);

pgm_depth = mat2gray(depth);
imwrite(rgb,'0000-c1.jpg');
clear;