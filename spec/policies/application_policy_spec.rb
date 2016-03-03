describe ApplicationPolicy do
  subject { described_class }

  let(:admin) { create :user, admin: true }

  permissions :index?, :show? do
    it 'allowed for any user' do
      is_expected.to permit
    end
  end

  permissions :create?, :new?, :update?, :edit?, :destroy? do
    it 'denied for any user' do
      is_expected.not_to permit
    end

    it 'allowed for admin only' do
      is_expected.to permit(admin)
    end
  end
end
