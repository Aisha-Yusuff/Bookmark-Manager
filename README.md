# Bookmark Manager

## Specifications:
* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks


## User Stories

Here is a list of the user stories created in order to fulfil the specifications mentioned above: 

<!-- 1 -->

```
As a user
So that I can view my bookmarks
I'd like to see a lit of bookmarks
```

<!-- 2 -->

```
As a user 
So that I can save a webpage
I'd like to add new bookmarks (the webpage's address and title)
```

<!-- 3 -->

```
As a user 
So that I can remove a bookmark from Bookmark Manager
I'd like to delete bookmarks
```

<!-- 4  -->

```
As a user 
So that I can manage my bookmarks
I'd like to update my bookmarks
```

<!-- 5 -->

```
As a user 
So that I can make notes on bookmarks
I'd like to comment on bookmarks
```

<!-- 6 -->

```
As a user 
So that I can organise my bookmarks
I'd like to tag bookmarks into categories
```

<!-- 7 -->

```
As a user
So that I can find a specific bookmark
I'd like to filter bookmarks by tag
```

<!-- 8  -->

```
As a user
So that I can protect my bookmarks
I'd like to be the only user who can manage my bookmarks
```

## Getting Started

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
