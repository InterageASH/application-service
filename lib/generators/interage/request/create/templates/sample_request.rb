# frozen_string_literal: true

class {{REQUEST_NAME}}Request < ApplicationRequest
  private

  def klass
    {{KLASS_NAME}}
  end

  def base_path
    '/{{BASE_PATH}}'
  end
end
