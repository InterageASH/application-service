# frozen_string_literal: true

module Interage
  RSpec.describe ApplicationService do
    it { is_expected.to respond_to(:errors) }
  end
end
