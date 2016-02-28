require 'rails_helper'

RSpec.describe NewsItem, type: :model do
  context 'validations' do
    describe '#title' do
      it { is_expected.to validate_presence_of(:title) }
      it do
        is_expected.to validate_length_of(:title).is_at_least(3).is_at_most(200)
      end
    end

    describe '#content' do
      it { is_expected.to validate_presence_of(:content) }
      it { is_expected.to validate_length_of(:content).is_at_least(5) }
    end
  end
end
