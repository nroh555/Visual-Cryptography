function [plainImage] = DecryptImage(cipherImage,keyImage)
% This function would decrypt a cipher image using the key image to obtain plain image back
% Inputs: cipherImage - A 2D array of uint8 values containing black and
% white cipher image
%         keyImage - A 2D array of uint8 values containing black and white
%         key image
% Outputs: plainImage - A 2D array of uint8 values that is the original image
% Example calls
% [plainImage] = DecryptImage(cipherImage,keyImage)
% This would return a 
% Author: Naren Rohan

% Determines the size of the keyImage (the smaller input)
[rows,cols] = size(keyImage);


for i = 1:rows
    for j = 1:cols
        
        % Adds a white pixel to output if inputs has two white pixels
        if (keyImage(i,j) == 255) && (cipherImage(i,j) == 255)
            plainImage(i,j) = 255;
            
        % Adds a black pixel to output if inputs has one white and one
        % black
        elseif keyImage(i,j) == 255 && cipherImage(i,j) == 0
            plainImage(i,j) = 0;
            
        % Adds a black pixel to output if inputs has one white and one
        % black
        elseif keyImage(i,j) == 0 && cipherImage(i,j) == 255
            plainImage(i,j) = 0;
            
        % Adds a white pixel to output if inputs has two black pixels
        elseif keyImage(i,j) == 0 && cipherImage(i,j) == 0
            plainImage(i,j) = 255;
        end
    end
end

% Converts the plainImage(output) to uint8 values
plainImage = uint8(plainImage);

end

