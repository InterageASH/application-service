# frozen_string_literal: true

module Interage
  RSpec.describe ApplicationRequest do
    it { is_expected.to respond_to(:all) }
    it { is_expected.to respond_to(:find) }
    it { is_expected.to respond_to(:create) }
    it { is_expected.to respond_to(:update) }
    it { is_expected.to respond_to(:destroy) }
  end
end
