% sample_niConvertCoordinate
% Get RGB and DEPTH image, then convert uvZ[pix,pix,mm] value to XYZ[mm,mm,mm]

close all; clear all;
addpath('./Mex');
%% Create context with xml file
context = mxNiCreateContext('Config/SamplesConfig.xml');

%%  Initialise FIGURE
width = 640; height = 480;
% depth image
figure, h1 = imagesc(zeros(height,width,'uint16'));
% rgb image
figure, h2 = imagesc(zeros(height,width,3,'uint8'));
% rgb+depth image
figure, h3 = imagesc(zeros(height,width,3,'uint8')); hold on;
        h4 = imagesc(zeros(height,width,'uint16'));  hold off;
% XYZ values 
figure; h5 = mesh(zeros(height,width,'double'),zeros(height,width,'double'),zeros(height,width,'double'));
           axis([-800 800 -600 600 -10000 -1 ]); view(180,90);
           xlabel('X [mm]'); ylabel('Y [mm]'); zlabel('Z [mm]');
           title('XYZ ÅiThe world coordinate systemÅj');

%% LOOP
for k=1:30
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
    set(h1, 'CData', depth);
    set(h2, 'CData', rgb);
    set(h3,'CData',rgb); 
    set(h4,'CData',depth);
    set(h4,'AlphaData',double(depth/50));
    % update Figue of XYZ
    tmp = real_XYZ(:);
    tmp(find(real_XYZ==0)) = NaN;
    tmp = reshape(tmp,[height width 3]);
    set(h5,'XData',-tmp(:,:,1));
    set(h5,'YData',-tmp(:,:,2));
    set(h5,'ZData',-tmp(:,:,3));
    drawnow;
    % FPS
    disp(['itr=' sprintf('%d',k) , ' : FPS=' sprintf('%f',1/toc)]);
end

%% Delete the context object 
mxNiDeleteContext(context);

