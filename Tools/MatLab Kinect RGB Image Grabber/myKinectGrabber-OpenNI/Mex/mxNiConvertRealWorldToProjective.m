% *************************************************************************
% [Name]
% mxNiConvertRealWorldToProjective
% 
% [Function]
% Convert XYZ on world coordinate system to pixel (u,v) and depth value[mm]
% [X[mm], Y[mm], Z[mm]] -> [u[pix], v[pix], d[mm]]
% 
% real_XYZ
% XYZ value on world coordinate system
% 
% [Usage]
% projective_XYZ = mxNiConvertRealWorldToProjective(context, real_XYZ);
% 
% [Arguments]
% context
% The structure which includes object for acquiring images.
% It is not used in Matlab directly, but used in mex file. 
% 
% real_XYZ
% XYZ value on world coordinate system
% 
% [Return]
% projective_XYZ
% pixel (u,v) and depth value
% 
% [Sample]
% sample_niConvertCoordinate.m
