function [key] = GenerateKey(randArray,patterns)
% This function would assemble a 2D cell array to act as a key, where each
% element is a 2 by 2 uint8 pattern (6 patterns) that will be selected at
% random
% Inputs: randArray - a 2D array of random integers between 1 and 6
%         patterns - a 1 by 6 cell array containing the 6 patterns
% Ouptuts: key - a 2D cell array containing patterns to act as a key
% example call
% [key] = GenerateKey(
% Author: Naren Rohan

% Determines the size of the input random array
[rows,cols] = size(randArray);

% Preallocates memory for the output array
key = zeros(rows,cols);

% Loops through each element and assigns a corresponding pattern
for i = 1:rows
    for j = 1:cols 
        key{i,j} = patterns{randArray(i,j)};
    end
end

end

