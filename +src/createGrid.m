function [X, Y, gridLength] = createGrid(data, threshold)
    if nargin < 2
        threshold = 1; % grid spacing
    end

    x = data(:,1); 
    y = data(:,2);
    
    xSize = [min(x), max(x)];
    ySize = [min(y), max(y)];

    xGrid = xSize(1):threshold:xSize(2);
    yGrid = ySize(1):threshold:ySize(2);
    
    lenX = length(xGrid);
    lenY = length(yGrid); 
    [X, Y] = meshgrid(xGrid,yGrid);
    gridLength = [lenX, lenY];
end