require 'thor/group'

module Pressman
  module Generators
    class AppGenerator < Thor::Group
      include Thor::Actions

      argument :app, type: :string

      def self.source_root
        File.dirname(__FILE__)
      end

      def create_base_project
        puts 'Creating base project'
        directory 'templates', "#{app}"
      end
    end
  end
end