# frozen_string_literal: true

module Interage
  module Request
    module Generators
      class CreateGenerator < Rails::Generators::NamedBase
        source_root File.expand_path('templates', __dir__)

        desc 'Generates a request.'

        def initialize(args, *_options)
          super

          @request_name = args[0].camelize
          @klass_name = args[1].camelize
          @base_path = args[0].underscore.pluralize
        end

        def create_request
          create_file(Rails.root.join("app/requests/#{file_name}_request.rb"),
                      sample_file.gsub('{{REQUEST_NAME}}', request_name)
                                 .gsub('{{KLASS_NAME}}', klass_name)
                                 .gsub('{{BASE_PATH}}', base_path))
        end

        private

        attr_reader :request_name, :klass_name, :base_path

        def sample_file
          File.read(File.expand_path('templates/sample_request.rb', __dir__))
        end
      end
    end
  end
end
