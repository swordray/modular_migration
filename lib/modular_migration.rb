require 'rails/generators'
require 'rails/generators/active_record'
# Original method library
require 'rails/generators/active_record/model/model_generator'
require 'rails/generators/active_record/migration/migration_generator'
# Custom method
require 'modular_migration/active_record/generators/model_generator'
require 'modular_migration/active_record/generators/migration_generator'
