function [cin, cout] = findDiffCoordinates(gridMap, gridProp, threshold)
    if nargin < 3
        threshold = 0.02; % meter
    end
    coordinates.in = [];
    coordinates.out = [];

    for i = 1:numel(gridMap)
        if gridProp(i) ~= 0
            [in, out] = findThis(gridMap{i}, gridProp(i), threshold);
            
            coordinates.in = [coordinates.in; in];
            coordinates.out = [coordinates.out; out];
        end
    end
    
    cin = coordinates.in;
    cout = coordinates.out;
end

function [in, out] = findThis(gmap, prop, th)
    gMapH = gmap(:, end);
    idx = abs(gMapH - prop) > th;
    
    in = gmap(idx, :);
    out = gmap(~idx, :);
end