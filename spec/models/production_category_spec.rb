require 'rails_helper'

RSpec.describe ProductionCategory, type: :model do
  it { is_expected.to have_many(:productions) }

  context 'validations' do
    describe '#name' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_length_of(:name).is_at_least(5) }
    end

    describe '#description' do
      it do
        is_expected.to validate_length_of(:description)
          .is_at_least(5)
          .is_at_most(500)
      end
    end
  end
end
