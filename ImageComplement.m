function [complement] = ImageComplement(image)
% This function would take an image and then swap the black pixels for
% white and white for black.
% Inputs: image - A 2D array of unit8 values with black and white pixels
% Outputs: complement - A 2D array of uint8 values that is the
% complement of the image (input)
% Example call
% [complement] = ImageComplement(uint8())
% This will return an output of 
% Author: Naren Rohan

[rows,cols] = size(image);

% Creates a for loop to loop through each element within the 2D array
for i = 1:rows
    for j = 1:cols
        
        % Assigns the respective complementary
        image(i,j) = 255 - image(i,j);
        
    end
end

% Assigns the output
complement = uint8(image);

end

