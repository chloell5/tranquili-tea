require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'associations' do
    it { should have_many(:subscriptions) }
  end

  describe 'validations' do
    it { should validate_presence_of(:first_name, :last_name, :email, :address) }
  end
end
