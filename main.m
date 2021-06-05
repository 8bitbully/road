clearvars, clc,

data = importdata("data/road.txt") ; 

[X, Y, lenGrid] = src.createGrid(data, .6); % default = 1;

% plot grid 
vision.plotGrid(X, Y);
hold on 

[gridPoint] = src.getPointsEachGrid(data, X, Y, lenGrid);

myGridMean = utils.gridHeightMean(gridPoint);

[in, out] = utils.findDiffCoordinates(gridPoint, myGridMean, 0.03); % default = 0.02;

vision.plotPointCloud(in, out);

hold off,
% ptCloudIn = pointCloud(in);
% ptCloudOut = pointCloud(out);

% pcshow(ptCloudIn);
% hold on
% pcshow(ptCloudOut)
% pcshowpair(ptCloudIn, ptCloudOut);


