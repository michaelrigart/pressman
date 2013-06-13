require 'thor'

module Pressman
  module Cli
    class Application < Thor

      desc 'new NAME', 'Create a new pressman project. "pressman new name_of_book" creates a new book project called NameOfBook in "./name_of_book"'
      def new(name)
        Pressman::Generators::AppGenerator.start [name]
      end

      desc 'build TYPE', 'Create a new build. Type can be html5, epub, pdf'
      subcommand 'build', Pressman::Cli::Build
    end
  end
end