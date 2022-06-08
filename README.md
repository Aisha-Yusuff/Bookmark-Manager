## Bookmark Manager

# Specifications:
* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks


# User Stories
# 1
As a user
So that I can view my bookmarks
I'd like to see a lit of bookmarks

# 2
As a user 
So that I can save a webpage
I'd like to add new bookmarks (the webpage's address and title)

# 3
As a user 
So that I can remove a webpage
I'd like to delete bookmarks

# 4 
As a user 
So that I can manage my bookmarks
I'd like to update my bookmarks

# 4 
As a user 
So that I can make notes on bookmarks
I'd like to comment on bookmarks

# 5 
As a user 
So that I can organise my bookmarks
I'd like to tag bookmarks into categories

# 6
As a user
So that I can find a specific bookmark
I'd like to filter bookmarks by tag

# 7 
As a user
So that I can protect my bookmarks
I'd like to be the only user who can manage my bookmarks

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
