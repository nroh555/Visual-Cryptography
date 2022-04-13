function [cipherArray] = EncryptImage(binaryImage,newKey)
% This function would encrypt a plain image using a key provided to obtain an encrypted cipher array of patterns
% Inputs: binaryImage - A 2D array of uint8 values containing the binary image to encrypt.
%         newKey - a 2D m by n cell array of the 2x2 patterns that will act as the key
% Ouputs: cipherArray - A 2D cellarray of 2x2 patterns which is the cipher array
% Example call
% [cipherArray] = EncryptImage(binaryImage,newKey)

% Author: Naren Rohan

% Determines the size of the binary image
[rows,cols] = size(binaryImage);

% Reads each pixel in the binary image
for i = 1:rows
    for j = 1:cols
        
        % Checks for either dark or bright pixels
        if (binaryImage(i,j) < 128)
            
            % Calls the complementary function if the pixel is dark
            cipherArray{i,j} = ImageComplement(newKey{i,j});
            
        elseif (binaryImage(i,j) >= 128)
            
            % Assigns the original since the pixel is bright (not dark)
            cipherArray{i,j} = newKey{i,j};
        end
    end
end

end

