# rails-modular_migration
[![Gem Version](https://badge.fury.io/rb/rails-modular_migration.png)](http://badge.fury.io/rb/rails-modular_migration) [![Build Status](https://secure.travis-ci.org/user-tony/rails-modular_migration.png?branch=master)](http://travis-ci.org/user-tony/rails-modular_migration)
[![DependencyStatus](https://gemnasium.com/user-tony/rails-modular_migration.png?travis)](https://gemnasium.com/user-tony/rails-modular_migration)
[![Code Climate](https://codeclimate.com/github/user-tony/rails-modular_migration.png)](https://codeclimate.com/github/user-tony/rails-modular_migration)

Automatic generation of migration directory.

## Requirements

* Ruby ~> 2.0
* Rails ~> 3.2

## Installation

Include the gem in your Gemfile:

    gem 'rails-modular_migration'

## Usage

Do nothing.

## Example
    rails g model core/user name:string

    invoke  active_record
    create    app/models/core/user.rb
    create    app/models/core.rb
    create    db/migrate/core/user/20140311041213_create_core_users_.rb

  
## Contributors

Special thanks to

* http://www.ihaveu.com/home team

## License

Copyright © 2014 Lijia Tong <user_tony@163.com> under The [MIT License](http://opensource.org/licenses/MIT).
