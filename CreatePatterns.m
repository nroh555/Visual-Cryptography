function [patterns] = CreatePatterns()
% This function would create a 1D cell array containing six 2 by 2 patterns
% of uint8 values. These patterns will then be used for key generation
% Inputs : None
% Outputs: patterns - A single 1 x6 cellarray of patterns that are unique to
% each other
% example call
% [patterns] = CreatePatterns()
% This will return a 1 by 6 cell array where each element is a 2x2 uint8
% value
% Author: Naren Rohan

% Defines all the possible image combination
patternOne = uint8([255,255;0,0]);
patternThree = uint8([0,255;0,255]);
patternFive = uint8([0,255;255,0]);

% Calls the ImageComplementary function to obtain their respective
% complementaries. 
patternTwo = ImageComplement(patternOne);
patternFour = ImageComplement(patternThree);
patternSix = ImageComplement(patternFive);
    
% Stores the pattenrs in a cell array
patterns = {patternOne,patternTwo,patternThree,patternFour,patternFive,patternSix};

end


