% *************************************************************************
% [Name]
% mxNiGetProperty
% 
% [Function]
% Return the value of property
% 
% [Usage]
% value = mxNiGetProperty(context, 'name');
%     Return the value given by 'name'
% 
% [Arguments]
% context
% The structure which includes object for acquiring images.
% It is not used in Matlab directly, but used in mex file.
% 
% name
% The property's name
%     'Gain'
%     'HoleFilter'
%     'MinDepthValue'
%     'MaxDepthValue'
%     'ShadowValue'
%     'NoSampleValue'
%     'Registration'
%     'RegistrationType'
%     'WhiteBalancedEnabled'
%     'ConstShift'
%     'PixelSizeFactor'
%     'MaxShift'
%     'ParamCoeff'
%     'ShiftScale'
%     'DeviceMaxDepth'
%     'LDDIS'
%     'GmcMode'
%     'ZPD'
%     'ZPPS'
%     'OutputFormat'
% 
% [Return]
% value 
% The value of given property
% 
% [Sample]
% ex. 1   Return the focal length in mm
% ZPD = mxNiGetDepthProperty(context, 'ZPD');
% 
% ex. 2   Return the pixel size in mm
% ZPPS = mxNiGetDepthProperty(context, 'ZPPS');
