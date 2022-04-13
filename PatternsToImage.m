function [assembly] =  PatternsToImage(key)
% This function would take a 2 by 2 cell array of uint8 patterns and 
%convert it to a grayscale image so that it can be displayed and saved
% Inputs: key -  a 2D m by n cell array of the 2 by 2 patterns 
% Outputs: assembly - A 2D array of unit8 values assembled into a single 
%image that will now have twice the number of rows and cols. 
% Example call:
% {assembly} = PatternsToImage({uint8([0 255; 255 0])}))
% This call would return an output of [0 255; 255 0]
% Author: Naren Rohan

% Converts the input cell array to a matrix double in dimensions
assembly = cell2mat(key);

end