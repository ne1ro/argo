require 'rails_helper'

RSpec.describe Production, type: :model do
  it { is_expected.to belong_to(:production_category) }

  context 'validations' do
    it { is_expected.to validate_presence_of(:production_category) }

    describe '#name' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_length_of(:name).is_at_least(5) }
    end

    describe '#code' do
      it { is_expected.to validate_length_of(:code).is_at_least(3) }
    end

    describe '#price' do
      it { is_expected.to validate_presence_of(:price) }
      it { is_expected.to validate_numericality_of(:price).is_greater_than(0) }
    end
  end
end
