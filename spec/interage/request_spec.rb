# frozen_string_literal: true

module Interage
  RSpec.describe Request do
    it 'has a version number' do
      expect(Interage::Request::VERSION).not_to be nil
    end
  end
end
