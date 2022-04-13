function [imageInt] = AlterByOne(int)
% This function would add 1 to an uint8 value within the range of 0 to 255. In the case of the value 255, it would subtract 1
% Inputs: int - an integer value that is within the range of 0 to 255
% Outputs: imageInt - an uint8 value that is one more or less than
% input
% example calls:
% [imageInt] = AlterByOne(255)
% This would return a unit8 value of 254
% Author: Naren Rohan

if (int >= 0) && (int <= 254)
    imageInt = uint8(int + 1);
elseif int == 255
    imageInt = uint8(int - 1);
end

end

