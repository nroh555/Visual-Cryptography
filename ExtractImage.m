function [original] = ExtractImage(hidden)
% This function would extract a black and white image that has been
% embedded within the given colour image
% Inputs: hidden - A 3D array of uint8 values that contains the hidden
% image
% Outputs: original - A 2D array of uint8 values of the black and white
% images that was hidden inside the colour image
% Example call
% [orginal] = ExtractImage(
% Author: Naren Rohan

% Determines the size of the 2D array of uint8 values
[rows,cols,colours] = size(hidden);
for i = 1:rows
    for j = 1:cols
        r = hidden(i,j,colours - 2); % Extracts the values from the red layer
        g = hidden(i,j,colours - 1); % Extracts the values from the green layer
        b = hidden(i,j,colours); % Extracts the values from the blue layer
        value = mod(sum([r,g,b]),2);
        % Checks to see if the sum is either odd or even
        if value == 1
            original(i,j) = 255;
        elseif value == 0
            original(i,j) = 0;
        end
    end
end

% Converts the orginal(output) to uint8 values
original = uint8(original);

end

