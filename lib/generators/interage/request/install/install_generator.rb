# frozen_string_literal: true

module Interage
  module Request
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)

      desc 'Generates a application request.'

      def create_application_request
        copy_file('application_request.rb', application_request_path)
      end

      private

      def application_request_path
        Rails.root.join('app/requests/application_request.rb')
      end
    end
  end
end
