% *************************************************************************
% [Name]
% mxNiConvertProjectiveToRealWorld
% 
% [Function]
% Convert pixel (u,v) of depth image and depth[mm] to world coordinate XYZ
% [u[pix] v[pix] d[mm]] -> [X[mm] Y[mm] Z[mm]]
% 
% [Usage]
% real_XYZ = mxNiConvertProjectiveToRealWorld(context, depth); 
% 
% [Arguments]
% context
% The structure which includes object for acquiring images.
% It is not used in Matlab directly, but used in mex file.
% 
% depth
% Depth image
% 
% [Return]
% real_XYZ
% converted XYZ value on world coordinate system
% 
% [Sample]
% sample_niConvertCoordinate.m
