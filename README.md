# modular_migration
[![Gem Version](https://badge.fury.io/rb/modular_migration.png)](http://badge.fury.io/rb/modular_migration) [![Build Status](https://secure.travis-ci.org/swordray/modular_migration.png?branch=master)](http://travis-ci.org/swordray/modular_migration)
[![DependencyStatus](https://gemnasium.com/swordray/modular_migration.png?travis)](https://gemnasium.com/swordray/modular_migration)
[![Code Climate](https://codeclimate.com/github/swordray/modular_migration.png)](https://codeclimate.com/github/swordray/modular_migration)

Rails migration file is generated to the relevant module directory.

## Requirements

* Ruby ~> 2.0
* Rails

## Installation

Include the gem in your Gemfile:
```ruby
gem 'modular_migration'
```
## Usage

Do nothing.

## Example

* Generator model file.
```bash
$ rails g model core/user name:string
```
```bash
  invoke  active_record
  create  app/models/core/user.rb
  create  app/models/core.rb
  create  db/migrate/core/user/20140324105328_create_core_users.rb
```
* Generator migration file.
```bash
$ rails g migration AddGenderToCoreUser gender:integer
```
```bash
  invoke  active_record
  create  db/migrate/core/user/20140324105719_add_gender_to_core_user.rb
```
* Generator scaffold file.
```bash
$ rails g scaffold office/human/person
```
```
  invoke  active_record
  create    app/models/office/human/person.rb
  create    app/models/office/human.rb
  create    db/migrate/office/human/person/20140325022901_create_office_human_people.rb
  invoke  resource_route
  route    namespace :office do
    namespace :human do
      resources :people
      end
    end
  invoke  scaffold_controller
  create    app/controllers/office/human/people_controller.rb
  invoke    erb
  create      app/views/office/human/people
  create      app/views/office/human/people/index.html.erb
  create      app/views/office/human/people/edit.html.erb
  create      app/views/office/human/people/show.html.erb
  create      app/views/office/human/people/new.html.erb
  create      app/views/office/human/people/_form.html.erb
  invoke    test_unit
  create      test/controllers/office/human/people_controller_test.rb
  invoke    helper
  create      app/helpers/office/human/people_helper.rb
  invoke      test_unit
  create        test/helpers/office/human/people_helper_test.rb
  invoke    jbuilder
  create      app/views/office/human/people/index.json.jbuilder
  create      app/views/office/human/people/show.json.jbuilder
  invoke  assets
  invoke    coffee
  create      app/assets/javascripts/office/human/people.js.coffee
  invoke    scss
  create      app/assets/stylesheets/office/human/people.css.scss
  invoke  scss
  create    app/assets/stylesheets/scaffolds.css.scss
```
## Credits
  [LiJia.Tong](https://github.com/user-tony/) @[Ihaveu](https://github.com/ihaveu)
  
## License

Copyright © 2014 Lijia Tong <user_tony@163.com> under The [MIT License](http://opensource.org/licenses/MIT).
