require 'rails/generators/active_record/migration/migration_generator'
module ActiveRecord
  module Generators # :nodoc:
    class MigrationGenerator < Base # :nodoc:

      def create_migration_file
        set_local_assigns!
        validate_file_name!
        migration = table_name.singularize.split('_') if migration_action.match(/(add|remove)/)
        migration = join_tables.map(&:singularize).join('_') if migration_action.match(/join/)
        migration = FileUtils.mkdir_p(migration) if migration
        migration_file = File.join("db/migrate", migration.join('/'), "#{file_name}.rb")
        migration_template @migration_template, migration_file
      end

    end
  end
end

