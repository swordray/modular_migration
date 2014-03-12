require 'rails/generators/active_record/migration/migration_generator'
module ActiveRecord
  module Generators # :nodoc:
    class MigrationGenerator < Base # :nodoc:

      def create_migration_file
        set_local_assigns!
        validate_file_name!
        migration = FileUtils.mkdir_p(File.join("db/migrate", table_name.singularize.split('_')))
        migration_template @migration_template, File.join(migration, "#{file_name}.rb")
      end

    end
  end
end

