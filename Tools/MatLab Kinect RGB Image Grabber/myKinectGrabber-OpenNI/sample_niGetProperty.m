% sample_niGetProperty
% Set and Get properties

%% Create context with xml file
context = mxNiCreateContext('Config/SamplesConfig.xml');

%% Set properties
mxNiSetProperty(context, 'Gain', 3);
mxNiSetProperty(context, 'HoleFilter', 3);
mxNiSetProperty(context, 'MinDepthValue', 3);
mxNiSetProperty(context, 'MaxDepthValue', 3);
mxNiSetProperty(context, 'Registration', false);
mxNiSetProperty(context, 'RegistrationType', 3); % If Registration=trueÅARegistrationType does not change.
mxNiSetProperty(context, 'WhiteBalancedEnabled', false);
mxNiSetProperty(context, 'OutputFormat', 0); 

%% Get properties
Gain = mxNiGetProperty(context, 'Gain');
HoleFilter = mxNiGetProperty(context, 'HoleFilter');
MinDepthValue = mxNiGetProperty(context, 'MinDepthValue');
MaxDepthValue = mxNiGetProperty(context, 'MaxDepthValue');
ShadowValue = mxNiGetProperty(context, 'ShadowValue');
NoSampleValue = mxNiGetProperty(context, 'NoSampleValue');
Registration = boolean(mxNiGetProperty(context, 'Registration'));
RegistrationType = mxNiGetProperty(context, 'RegistrationType');
WhiteBalancedEnabled = boolean(mxNiGetProperty(context, 'WhiteBalancedEnabled'));
ConstShift = mxNiGetProperty(context, 'ConstShift');
PixelSizeFactor = mxNiGetProperty(context, 'PixelSizeFactor');
MaxShift = mxNiGetProperty(context, 'MaxShift');
ParamCoeff = mxNiGetProperty(context, 'ParamCoeff');
ShiftScale = mxNiGetProperty(context, 'ShiftScale');
DeviceMaxDepth = mxNiGetProperty(context, 'DeviceMaxDepth');
ZPD = mxNiGetProperty(context, 'ZPD'); 
ZPPS = mxNiGetProperty(context, 'ZPPS');
LDDIS = mxNiGetProperty(context, 'LDDIS');
GmcMode = boolean(mxNiGetProperty(context, 'GmcMode'));
OutputFormat = mxNiGetProperty(context, 'OutputFormat');

%% Delete context
mxNiDeleteContext(context);