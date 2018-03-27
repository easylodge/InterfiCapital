module InterfiCapital
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Creates InterfiCapital initializer for your application"

      def copy_initializer
        template "interfi_capital_initializer.rb", "config/initializers/interfi_capital.rb"

        puts "Remember to set the base url in your environment files under the interfi_capital_url key"
      end
    end
  end
end
