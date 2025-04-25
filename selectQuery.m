function queryImage = selectQuery

[fileName, pathName] = uigetfile('*.jpg','Select a host image','..\Dataset\Testing_Set');
queryImage = imread([pathName,'\',fileName]);

% queryIndex = randperm(900,1);
% Define a query image
% queryImage = readimage(cbirImageSet, queryIndex);

figure
imshow(queryImage)

