# modular_migration
[![Gem Version](https://badge.fury.io/rb/modular_migration.png)](http://badge.fury.io/rb/modular_migration) [![Build Status](https://secure.travis-ci.org/swordray/modular_migration.png?branch=master)](http://travis-ci.org/swordray/modular_migration)
[![DependencyStatus](https://gemnasium.com/swordray/modular_migration.png?travis)](https://gemnasium.com/swordray/modular_migration)
[![Code Climate](https://codeclimate.com/github/swordray/modular_migration.png)](https://codeclimate.com/github/swordray/modular_migration)

Rails migration files generates into relevant modular directory

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

- Generate model
    
    ```bash
    $ rails g model core/user name:string
    invoke  active_record
    create    app/models/core/user.rb
    create    app/models/core.rb
    create    db/migrate/core/user/20140324105328_create_core_users.rb
    ```

- Generate migration
    
    ```bash
    $ rails g migration AddGenderToCoreUser gender:integer
    invoke  active_record
    create    db/migrate/core/user/20140324105719_add_gender_to_core_user.rb
    ```

## Credits

- [LiJia.Tong](https://github.com/user-tony/) @[ihaveu](https://www.ihaveu.com/home)
- [swordray](https://github.com/swordray) @[ihaveu](http://www.ihaveu.com/home) @[shuhai](http://tw.shuhai.org/) @[leaf](http://leaf.iacger.com)
  
## License

Copyright © 2014 Lijia Tong <user_tony@163.com> under The [MIT License](http://opensource.org/licenses/MIT).
