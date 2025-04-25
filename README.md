# Content-Based Image Retrieval (CBIR) using Machine Learning
## Overview
This repository contains MATLAB scripts to demonstrate a basic Content-Based Image Retrieval (CBIR) system. CBIR retrieves relevant images from a database based on visual features derived from a query image.
## Files and Description 
Main_Toolbox.m  - Main interface script to initiate the CBIR process and interact with users.
trainDataset.m - Processes and extracts features from images in the dataset to train the retrieval model.
readDatabase.m - Reads and organizes the stored image features from the database into MATLAB workspace.
selectQuery.m - Allows the user to select a query image interactively for retrieval.
queryRetrival.m -Performs retrieval by comparing the query image features with those in the trained database and returns similar images.
databaseDisplay01.m - Displays retrieved images neatly and interactively to the user.
## Workflow
Step 1 - Trained Dataset 
Run the training script to preprocess your image database and extract essential visual features.
Step 2 - Main Interface
Launch the main toolbox for user interaction and select your query image.
Main_Toolbox();
Selecting Query:

Use selectQuery() to pick a query image.

Retrieving Images:

queryRetrival() computes similarity and fetches matching images.

Displaying Results:

databaseDisplay01() showcases retrieved images.
## Requirements
MATLAB (preferably recent versions)

Image Processing Toolbox
## Usage
Clone or download this repository.

Open MATLAB and set the repository folder as your working directory.

Follow the workflow steps above to train, query, and retrieve images.
## Notes
Ensure images in the dataset are placed in the correct directory structure before training.

Customize feature extraction methods in trainDataset.m and queryRetrival.m if necessary.