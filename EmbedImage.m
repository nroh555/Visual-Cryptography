function [hiddenImage] = EmbedImage(assembly,colourImage)
% This function will embed a binary image inside another colour image
% Inputs:  assembly - A 2D array of unit8 values assembled into a single
% image that will then be embedded into the colour image
%          colourImage - A 3D array of uint8 values that the black and white image will be embedded into
% Outputs: hiddenImage - A 3D array of uint8 values that contains a hidden black and white image
% example call
% [hiddenImage] = EmbedImage(assembly,colourImage)
% The output will be such that only the values in the red (first) layer will be altered while the rest will remain the same
% Author: Naren Rohan

% Determines the size of the binary image and the coloured image
[rows,cols] = size(assembly);

for i = 1:rows
    for j = 1:cols
        r = colourImage(i,j,1); % Extracts the value from the red layer
        g = colourImage(i,j,2); % Extracts the value from the green layer
        b = colourImage(i,j,3); % Extracts the value from the blue layer
        
        % Determines if sum is either even or odd
         Value = mod(sum([r,g,b]),2);
         
        % Determines if the pixel is either black or white
        if (assembly(i,j) == 0) && (Value == 1)
            % Calls the function to ensure an even sum
            colourImage(i,j,1) = AlterByOne(r);
            
        elseif (assembly(i,j) == 255) && (Value == 0)
            % Calls the function to ensure an odd sum
            colourImage(i,j,1) = AlterByOne(r);
        end
    end
end

% Assigns the output
hiddenImage = colourImage;

end

