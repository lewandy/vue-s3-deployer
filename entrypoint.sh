#!/usr/bin/env bash

#Move to app rource code
cd $INPUT_APP_SOURCE_CODE

#Install dependencies
npm install 

#Build application
npm run build

#Sync files with amazon s3 bucket app
aws --region $INPUT_AWS_DEFAULT_REGION s3 sync ./dist s3://$INPUT_AWS_BUCKET_NAME --delete
