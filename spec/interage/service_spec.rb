# frozen_string_literal: true

module Interage
  RSpec.describe Service do
    it 'has a version number' do
      expect(Interage::Service::VERSION).not_to be nil
    end
  end
end
