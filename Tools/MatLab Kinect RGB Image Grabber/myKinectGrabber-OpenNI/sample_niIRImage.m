% sample_niIRImage
% Get IR and DEPTH image via Kinect

close all; clear all;
addpath('./Mex');
%% Create context with xml file
context = mxNiCreateContext('Config/SamplesIR_DepthConfig.xml');

%% Initialise FIGURE
ir_width = 640; ir_height = 480;
depth_width = 640; depth_height = 480;
% IR image
figure, h1 = imagesc(zeros(ir_height,ir_width,'uint16')); colormap('gray');
% depth image
figure, h2 = imagesc(zeros(depth_height,depth_width,'uint16'));

%% LOOP
for k=1:100
    tic
    %Capture IR and Depth image
    mxNiUpdateContext(context);
    [ir, depth]= mxNiIRImage(context);
    % Update FIGURE
    set(h1,'CData',ir); 
    set(h2,'CData',depth); 
    drawnow;
    disp(['itr=' sprintf('%d',k) , ' : FPS=' sprintf('%f',1/toc)]);
end

%% Delete the context object 
mxNiDeleteContext(context);