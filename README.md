# Project: JSON API
*JSON API service in Ruby using Ruby on Rails.*

![](https://visitor-badge-reloaded.herokuapp.com/badge?page_id=juzershakir.api_demo&color=000000&lcolor=000000&style=for-the-badge&logo=Github)


## ❗ Objectives
This web-app must accomplish the following:
- [x] User - has only a login.
- [x] The Post - it belongs to the user. Has a title, content, author's IP (saved separately for each post).
- [x] Rating - belongs to the post. Accepts a value from 1 to 5.
- [x] Create a post. It should:
  - [1] Accept the title and content of the post (cannot be empty), as well as the author's login and IP.
  - [2] If there is no author with this username yet, it should be created.
  - [3] Return either post attributes with status 200 or errors validations with status 422.

- [x] Rate the post. It should:
  - [1] Accept post ID and value.
  - [2] Return a new one average post rating.
  - [3] *Important:* the action must work correctly for any number of competitive requests to rate the same post.
- [x] Get the top N posts by average rating. Just an array of objects with headings and content.
- [x] Get a list of IPs from which several different authors posted. Array objects with fields: IP and an array  of author logins.
- [x] Feedback has many posts and user, params: owner_id, comment (text)
- [x] Add feedback. It should:
  - [1] Accept user_id or post_id, comment, owner_id
  - [2] Check if post or user already have a feedback from same owner
  - [3] Return feedback list form same owner
- [x] Add in seeds:
  - [1] To generate 10k post feedback, and 50 user feedback with random text  - Should be at least 200k posts in the database, it is better to make authors around 100 pieces,  use 50 different IPs. Actions should work fast enough on standard hardware both for the specified  amount of data (faster than 100 ms), and for much more, that is, you need a good margin in terms of  query optimization. To do this, you can use data denormalization and any other database tools.

- [x] Cover with specs main parts of your project
- [x] Create a worker that will execute every day at 9 am and will generate an xml file with all feedbacks.  Should have an owner login, comment, rating (empty if user feedback), feedback type (post user).

----


**This project was built on Ruby version *2.7.2* & Rails version *6.1.4.1*.**

