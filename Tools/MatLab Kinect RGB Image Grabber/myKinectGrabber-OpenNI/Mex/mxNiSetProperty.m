% *************************************************************************
% [Name]
% mxNiSetProperty
% 
% [Function]
% Set the value of property
% 
% [Usage]
% mxNiSetProperty(context, 'name', value);
%     Set a value to the given property by 'name'
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
%     'Registration'
%     'RegistrationType'
%     'WhiteBalancedEnabled'
%     'OutputFormat'
% 
% [Return]
% 
% [Sample]
% ex. 1   Set the max depth value
% mxNiSetProperty(context, 'MaxDepthValue', value);
% 
% ex. 2   Set the gain
% mxNiSetProperty(context, 'Gain', value);
