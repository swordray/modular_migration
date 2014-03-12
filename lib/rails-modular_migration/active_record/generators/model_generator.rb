module ActiveRecord
  module Generators # :nodoc:
    class ModelGenerator < Base # :nodoc:

      def create_modular_migration_file
        template_file = Rails.version.to_i < 4 ? 'migration.rb' : '../../migration/templates/create_table_migration.rb'
        migration_file = File.join(FileUtils.mkdir_p(File.join('db/migrate', class_path.join('/'), file_name)), "/create_#{table_name}.rb")
        migration_template template_file, migration_file
      end

    end
  end
end
