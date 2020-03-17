Ruby_exercise <br><br>


Ruby version: 2.6.0<br><br>

Rails: 5.2.2<br><br>

DB: Mysql<br><br> 


This is a ruby simple CRUD exercise with proper form validations and rspec tests. 

Try out cloning this repository and running the command
```
bundle install
rake db:create db:migrate db:seed
```
This will install this project gems and create your project database, for the first access you can use the user "admin@email.com" with the password "123" and create another users through the "New User" button on users menu.
After that just run the command 
```
rails s
```
and access localhost:3000

#################################################################

Running Rspec Tests

The validation tests are based on all fields fullfiled on user form. Run the commands
```
rake db:test:prepare
rspec spec/models/user_spec.rb
```
The tests are predefined on user_spec any modification on model rules should end on a test failure. This will help to avoid any system break through model modifications. Try removing any of the validation on app/models/user.rb and run the tests again, the return should tell you that the field validation removed can not be empty.
