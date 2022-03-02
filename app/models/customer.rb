class Customer < ApplicationRecord
  has_many :subscriptions, dependent: :destroy

  validates_presence_of :first_name, :last_name, :email, :address
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
