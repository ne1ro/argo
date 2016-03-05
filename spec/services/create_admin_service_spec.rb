require 'rails_helper'
require 'figaro'

RSpec.describe CreateAdminService do
  describe '#call' do
    let(:admin) { CreateAdminService.new.call }

    it 'has email from config' do
      expect(admin.email).to eq(Rails.application.secrets.admin_email)
    end

    it 'has name from config' do
      expect(admin.name).to eq(Rails.application.secrets.admin_name)
    end

    it 'is admin' do
      expect(admin.admin).to be_truthy
    end
  end
end
