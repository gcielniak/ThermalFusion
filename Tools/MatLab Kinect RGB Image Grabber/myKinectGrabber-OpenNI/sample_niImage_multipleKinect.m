% sample_niImage_multipleKinect
% Get RGB and DEPTH image via multiple Kinect

close all; clear all;
addpath('./Mex');
%% Set Properties for Kinect (xml file can't be used)
% RGB image
image_node.width = 640;
image_node.height = 480;
image_node.fps = 30;
image_node.mirror = true;
% Depth image
depth_node.width = 640;
depth_node.height = 480;
depth_node.fps = 30;
depth_node.mirror = true;
% Info 
info.image_node = image_node;
info.depth_node = depth_node;

%% Get number of Kinect
numDevices = mxNiEnumerateDevices();

%% Initialise FIGURE
width = 640;
height = 480;
for II=1:numDevices
    figure, h{2*II-1} = imagesc(zeros(height,width,3,'uint8')); hold on;
            h{2*II}   = imagesc(zeros(height,width,'uint16'));  hold off;
end

%% Create context
for II=1:numDevices
    context{II} = mxNiCreateContext(info, II-1);
end

%% LOOP
for k=1:30
    tic
    %align Depth onto RGB
    option.adjust_view_point = true;
    % Update context
    for II=1:numDevices
        mxNiUpdateContext(context{II}, option);
    end
    % Acquire RGB and Depth image
    for II=1:numDevices
        [rgb{II}, depth{II}] = mxNiImage(context{II});
        % Update figure
        set(h{2*II-1},'CData',rgb{II}); 
        set(h{2*II},'CData',depth{II});
        set(h{2*II},'AlphaData',double(depth{II}/50));
    end
    drawnow;
    disp(['itr=' sprintf('%d',k) , ' : FPS=' sprintf('%f',1/toc)]);
end

%% Delete the context object
for II=1:numDevices
    mxNiDeleteContext(context{II});
end
