As a user
So I can easily find the page im looking for
I want to see a list of bookmarks on the website

As a user
So that I can store data for later retrieval
I want to add bookmarks to Bookmark Manager

DB instructions:

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
5. Create test database using the psql command CREATE DATABASE bookmark_manager_test;
6. Create table by connecting to the bookmark_manager_test database
7. Connect to the database using the pqsl command \c bookmark_manager_test
8. Create a table using the psql command CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));