eMath_init;

Repeat = 1;
while(Repeat)
    choice = menu('Content based Image Retival', ...
        'Reading Training Set', 'Extract Bag of Features', 'Select Query', ...
        'Display Images', 'Exit');
    
    switch choice
        
        case 1
            disp('Reading Training Image Dataset');
            
            % Location of the compressed data set
            datasetFolder = '..\Dataset';
            
            readDatabase(datasetFolder);
            
            disp('Reading Training Image Dataset ... Done');

        case 2
            disp('Extract Bag of Features');
            
            load cbirImageSet;
            trainDataset(cbirImageSet);
            
            disp('Extract Bag of Features ... Done');
            
        case 3
            disp('Select Query Image');
            
            queryImage = selectQuery();
            
            disp('Select Query Image ... Done');

        case 4
            disp('Display Retived Images');
            
            load cbirImageSet;
            queryRetrival(queryImage, cbirImageSet);
            
            disp('Display Retived Images ... Done');

        case 5
            close all;
            clear all;
            clc;
            
            Repeat = 0;
    end
end

disp('Have a Nice Day...');

