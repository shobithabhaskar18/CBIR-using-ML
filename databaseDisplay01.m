function databaseDisplay01(datasetPath, dispImgs)

allDatabase = imageSet(datasetPath, 'recursive');
N = size(allDatabase, 2);

%% Display Montage of Face Images
for i = 1:N

    imgsCount = allDatabase(i).Count;
    permIndx = randperm(imgsCount,dispImgs);
    
    %Display some of the images in the datastore.
    montage(allDatabase(i).ImageLocation(permIndx));
    
end

