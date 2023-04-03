# Phase 3 Project: DisKatie

## Description

DisKatie is a Single Page Application that chronicles and stores my personal record collection using server-side code instead of local database storage. Users (me) can look up my records by genre to get information on the artist, release date, and cover art. Users (me) can also delete records from my collection if I sell them to other collectors, update records to keep track of when I've listened to them, and add new records and genres as my collection grows. This app is built using React, Ruby, and Sinatra.

## Project features and requirements

1. ActiveRecord is used in this application for performing CRUD operations on a database of objects.
2. This project includes two models with a one-to-many relationship--Genres and Records. A Genre has many records, and a Record belongs to a genre.
3. The following API routes were set up in Sinatra and the following CRUD operations can be performed: 
  a. Create and read actions both genres and records.
  b. full CRUD capability for records: 
    Updating a record will return a pre-filled form with existing values for the record object. The record object updates after values are changed and submitted.
4. DisKatie uses a frontend React application to interact with the API to perform CRUD operations. The GitHub Repo for the frontend can be found here: https://github.com/katiefaybehrmann/phase-3-project-frontend 
5.DisKatie sets State and rerenders using proper State functionality whenever a POST, PATCH, or DELETE request receives a response. Get requests are not used to perform these functions. 
6. DisKatie uses separate classes for each of the record and genre models. Active Record is utilized for instance and class methods.
7. Routes in DisKatie follow RESTful conventions.
8. DisKatie's uses its backend optimally, passing JSON from backend to frontend and utilizing ActiveRecord methods to do so. Pass JSON for related associations to the frontend from the back end. 

### User Journey

As a user, I can:

- View the different genres of Katie's record collection
- View each record associated with each genre.
- Add a genre to the database.
- Add a record to the database, and associate it with a genre.
- Update a record object's values.
- Delete a record from the database.

## Credits and citations

This project was loosely based on the record resale site Discogs. 
