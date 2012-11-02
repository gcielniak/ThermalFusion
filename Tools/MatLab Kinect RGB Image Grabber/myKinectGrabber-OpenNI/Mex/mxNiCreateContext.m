% *************************************************************************
% [Name]
% mxNiCreateContext
% 
% [Function]
% Initialise to get images by Kinect 
% 
% [Usage]
% Sets by a xml file :
% context = mxNiCreateContext(xml_file);
% 
% Sets by user structure :
% context = mxNiCreateContext(info, device_index);
% 
% [Arguments]
% Sets by a xml file :
% xml_file
% config xml file
% 
% Sets by user structure :
% The structure with information
%     info.image_node : Gets RGB image
%     info.depth_node : Gets Depth image
%     info.ir_node : Gets IR image
%     info.scene_node : Get segmentation image
% 
%     Each XX_node has the following parameters
%     XX_node.width : image width 
%     XX_node.height : image height
%     XX_node.fps : frame rate
%     XX_Node.mirror
%         true : toggles mirror on
%         false : toggles  mirror off
% 
% device_index
% Index (min : 0)
% 
%     ex. 
%     context1 = mxCreateContext(info, 0);
%     context2 = mxCreateContext(info, 1);
% 
% [Return]
% context
% The structure which includes object for acquiring images.
% It is not used in Matlab directly, but used in mex file.
% 
% [Sample]
% sample_niImage.m
% sample_niImage_multipleKinect.m
% 
