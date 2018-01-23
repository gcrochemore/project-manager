## Project Manager

# Installation :

- Check rails version

`rails -v`
- Update rails

`gem update rails`
- Creating a new rails app using postgresql

`rails new project-manager --database=postgresql -T`
- Add rspec

`gem 'rspec-rails', '2.8'`

`bundle install`

`rails g rspec:install`

`gem 'devise'`

`rails generate devise:install :database_authenticatable :confirmable :recoverable :registerable :rememberable :trackable :validatable :lockable`

`rails generate devise User first_name:string last_name:string`

`gem 'cancancan', '~> 2.0'`

`rails generate cancan:ability`

`gem 'rolify'`

`rails generate rolify Role User`

`rake db:migrate`

Installation Bootstrap :
https://github.com/twbs/bootstrap-rubygem