## Project Manager

[![Codeship Status for gcrochemore/project-manager](https://app.codeship.com/projects/cd603c80-e2bc-0135-eacf-7e3cff71867b/status?branch=feat/initialisation-application)](https://app.codeship.com/projects/267935)
[![Maintainability](https://api.codeclimate.com/v1/badges/2c458e18679eb22cddfd/maintainability)](https://codeclimate.com/github/gcrochemore/project-manager/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/2c458e18679eb22cddfd/test_coverage)](https://codeclimate.com/github/gcrochemore/project-manager/test_coverage)
[![Dependency Status](https://beta.gemnasium.com/badges/github.com/gcrochemore/project-manager.svg)](https://beta.gemnasium.com/projects/github.com/gcrochemore/project-manager)
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

`rake db:seed:dump models_exclude="User, Role" exclude=[]`

#### Entity

`rails generate scaffold Organization name:string`

`rails generate scaffold Project name:string organization:references bug_tracker:string`

`rails generate scaffold ProjectBundle name:string project:references estimated_time:float`

`rails generate scaffold TaskType name:text`

`rails generate scaffold TaskStatus name:text order:integer`

`rails generate scaffold Task identifier:integer task_type:references task_status:references name:string description:text project:references project_bundle:references task:references estimated_time:float consumed_time:float remaining_time:float planned_time:float begin_date:date end_date:date`

`rails generate scaffold Delivery name:text date:date description:text`

`rails generate scaffold Assignment date:date user:references task:references time:float comment:text consumed:boolean`


