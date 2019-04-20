# frozen_string_literal: true

require 'interage/request/version'
require 'active_support/core_ext/module'

module Interage
  module Request
    class Error < StandardError
    end
  end

  autoload :ApplicationRequest, 'interage/application_request'
end
