function gridMean = gridHeightMean(cellArr)
    gridSize = size(cellArr);
    returnCell = zeros(gridSize(1), gridSize(2));
    
    for i = 1:numel(cellArr)
        content = [cellArr{i}];
        if ~isempty(content)
            meanContent = mean(content, 1);
            meanContent = meanContent(3);
            returnCell(i) = meanContent;
        end
    end
    gridMean = returnCell;
end