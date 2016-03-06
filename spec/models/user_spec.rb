describe User do
  let(:user) { create :user, admin: true }

  subject { user }

  it { is_expected.to respond_to(:email) }
  it { is_expected.to validate_presence_of(:email) }
end
