Ruby_exercise

This is a ruby simple CRUD exercise with proper form validations and rspec tests.

Try out cloning this repository and running the command
```
bundle install
```
After that just run the command 
```
rails s
```
and access localhost:3000

#################################################################

Running Rspec Tests

The validation tests are based on all fields fullfiled on user form. Run the command
```
bundle rspec exec
```
Since the object are predefined on user_spec any modification on model rules should end on a test failure. This will help to avoid any system break through #model modifications. Try removing any of the validation on app/models/user.rb and run the tests again, the return should tell you that the field removed can not #be empty.
