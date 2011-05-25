require 'generators/minitest'

module MiniTest
  module Generators
    class HelperGenerator < MiniTest::Rails::Generators::Base
      check_class_collision :suffix => "HelperTest"

      def create_helper_files
        template 'helper_test.rb', File.join('test/unit/helpers', class_path, "#{file_name}_helper_test.rb")
      end
    end
  end
end