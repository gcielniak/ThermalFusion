% sample_niEnumerateDevices
% Get the number of connected devices

numDevices = mxNiEnumerateDevices();
disp(sprintf('%d devices are connected', numDevices));