function [newKey] = ImageToPatterns(assembly)
% This function would convert an image back into a cell of 2 by 2 array.
% This function is the inverse of PatternsToImage
% Inputs : assembly - A 2D array of unit8 values assembled into a single binary image
% Outputs: newKey -  a 2D m by n cell array of the 2 by 2 patterns 
% example call
% [newKey] = ImageToPatterns(assembly)

% Author: Naren Rohan

% Determines the size of the Assembly image
[rows,cols] = size(assembly);

% The index variables a and b are used similar to PatternsToImage but in
% reverse (refer to solution 1 and 2 of PatternsToImage)

% Sets the row index for the output cell array(newKey)
a = 1; 

% Creates a for loop that will loop through each element in with a step
% size of two. This helps to half the input. 
for i = 1:2:rows
    
    % Sets the column index for the output cell array
    b = 1; 
    
    for j = 1:2:cols
        
        % Assigns the pattern from the key, the pixel and the next pixel
        % simultaneously.
        newKey{a,b} = assembly((i:i+1),(j:j+1));
        b = b + 1; 
    end
    
    a = a + 1;
end

end

