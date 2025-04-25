function cbirImageSet = readDatabase (datasetFolder)

close all;

% Location of the compressed data set
imageFolder = fullfile(datasetFolder,'Training_Set');

cbirImageSet = imageDatastore(imageFolder,'LabelSource','foldernames','IncludeSubfolders',true);

% Total number of images in the data set
numel(cbirImageSet.Files)

dispImgs = 25;
databaseDisplay01(imageFolder, dispImgs);

save cbirImageSet cbirImageSet;

