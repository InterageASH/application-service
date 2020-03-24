# frozen_string_literal: true

require 'interage/service/version'
require 'active_support/core_ext/module'

module Interage
  module Service
    class Error < StandardError
    end
  end

  autoload :ApplicationService, 'interage/application_service'
end
