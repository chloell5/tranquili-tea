require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'associations' do
    it { should belong_to(:tea) }
    it { should belong_to(:customer) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title, :price, :status, :frequency) }
  end
end
