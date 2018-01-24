## Project Manager

[ ![Codeship Status for gcrochemore/project-manager](https://app.codeship.com/projects/cd603c80-e2bc-0135-eacf-7e3cff71867b/status?branch=feat/initialisation-application)](https://app.codeship.com/projects/267935)

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

`rails generate devise:views`

Installation Bootstrap :
https://github.com/twbs/bootstrap-rubygem

`rails g scaffold_controller User first_name:string last_name:string`

`rails g erb:scaffold User first_name:string last_name:string`

##### Database
  
`rake db:seed:dump EXCLUDE=[]`