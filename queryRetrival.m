function queryRetrival(queryImage, cbirImageSet)

load 'savedColorBagOfFeatures.mat';

dispCnt = 20;

% Search for the top 5 images with similar color content
[imageIDs, scores] = retrieveImages(queryImage, cbirImageSet, 'NumResults', dispCnt);

scores

% Display results using montage. 
figure
montage(cbirImageSet.ImageLocation(imageIDs),'ThumbnailSize',[200 200])

