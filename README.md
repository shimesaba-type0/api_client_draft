# API client draft

I would like to make below programs.  
* API server presented by Rails 5 API mode.
* API client that is my original.

### API Client list
- get_users.rb
  - Get all user information
  - Done
- get_user_info.rb
  - Get a user information
  - Done
- add_user.rb
  - Add a user information
  - Done
- search_user.rb
  - Search user information
  - Done
- update_user_info.rb
  - Update user information
  - Done
- delete_user.rb
  - Delete user information
  - Done

### Senario
#### Add user
1. `$ ruby add_user.rb -n NAME -a AGE -d DESCRIPTION`
1. Complete

#### Get all users information
1. `$ ruby get_users.rb`
1. Complete

#### Get a user information
1. `$ ruby get_user_info.rb -i ID`
1. Complete

#### Search user information
1. `$ ruby search_user_info.rb -n NAME`
1. Completed
Attention: Did not development search by age and description.

#### Update user information
1. `$ ruby search_user_info.rb -n NAME`
1. Get user ID
1. `$ ruby update_user_info.rb -i ID [-n NAME -a AGE -d DESCRIPTION]`
1. `$ ruby get_user_info.rb -i ID`
1. Complete

#### Delete user information
1. `$ ruby search_user_info.rb -n NAME`
1. Get user ID
1. `$ ruby delete_user.rb -i ID`
1. Complete


# CAUTION
This program perpose is training.  
Please take care to use this codes if you want to use.


