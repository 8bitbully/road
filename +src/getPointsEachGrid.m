function [gridPoint, nonEmptyIdx] = getPointsEachGrid(content, X, Y, gridLength)
    parse.Grid = { };
    x = content(:, 1); 
    y = content(:, 2);
    z = content(:, 3);
    
    for i = 1:gridLength(2) - 1 % len(y)
        for j = 1:gridLength(1) - 1 % len(x)
            % Get the points of each grid 
            Point = [X(i, j), Y(i, j);
                X(i, j+1), Y(i, j+1);
                X(i+1, j+1), Y(i+1, j+1);
                X(i+1, j), Y(i+1, j)]; 

            idx = inpolygon(x, y, Point(:, 1), Point(:, 2)); 
            parse.Grid{i, j} = [x(idx) y(idx) z(idx)];
        end
    end
    
    gridPoint = parse.Grid;
    nonEmptyIdx = ~cellfun(@isempty, parse.Grid);
end