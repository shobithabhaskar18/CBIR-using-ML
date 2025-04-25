function trainDataset(cbirImageSet)

%Pick a random subset of the flower images.
trainingSet = splitEachLabel(cbirImageSet, 0.8, 'randomized');

% Create a custom bag of features using the 'CustomExtractor' option.
colorBag = bagOfFeatures(trainingSet);

% Create a search index.
cbirImageSet = indexImages(cbirImageSet,colorBag,'SaveFeatureLocations',false);

save('savedColorBagOfFeatures.mat', 'colorBag', 'cbirImageSet');

