module ActiveRecord
  module Generators # :nodoc:
    class MigrationGenerator < Base # :nodoc:

      def create_migration_file
        set_local_assigns!
        validate_file_name! if self.respond_to?(:validate_file_name)
        if migration_action && migration_action.match(/(add|remove)/)
          table = table_name.singularize
          modular = table.gsub(/_/, '/').camelize.safe_constantize
          table = table.split('_')
          (table.size-1).times do |i|
            result = []
            table.each_with_index do |m, index|
              result << m
              result << (index == i ? '_' : '/') if index < table.size-1
              modular = result.join.camelize.safe_constantize if index == table.size-1
            end
            break if modular
          end unless modular
          migration = modular ? modular.to_s.underscore : []
        end
        migration = join_tables.map(&:singularize).join('_') if migration_action && migration_action.match(/join/)
        FileUtils.mkdir_p(File.join("db", "migrate", migration)) if migration
        migration_file = File.join("db", "migrate", migration||"", "#{file_name}.rb")
        template_file = Rails.version.to_i < 4 ? 'migration.rb' : @migration_template
        migration_template template_file, migration_file
      end

    end
  end
end
