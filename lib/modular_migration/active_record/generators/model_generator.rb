module ActiveRecord
  module Generators # :nodoc:
    class ModelGenerator < Base # :nodoc:

      class_option :migration,  type: :boolean, default: true
      class_option :timestamps, type: :boolean, default: true

      def create_migration_file
        return unless options[:migration] && options[:parent].nil?
        attributes.each { |a| a.attr_options.delete(:index) if a.reference? && !a.has_index? } if options[:indexes] == false
        template_file = Rails.version.to_i < 4 ? 'migration.rb' : '../../migration/templates/create_table_migration.rb'
        migration_file = File.join(FileUtils.mkdir_p(File.join('db/migrate', class_path.join('/'), file_name)), "/create_#{table_name}.rb")
        migration_template template_file, migration_file
      end

    end
  end
end
