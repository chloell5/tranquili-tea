require 'rails_helper'

RSpec.describe 'Customer API' do
  let!(:customer) { FactoryBot.create(:customer) }
  let!(:tea) { FactoryBot.create(:tea) }
  let!(:tea2) { FactoryBot.create(:tea) }

  describe 'POST /api/vi/customers/:id/subscriptions' do
    it 'creates a subscription' do
      sub = {
        title: 'test',
        price: 3.50,
        status: 'active',
        frequency: 2,
        customer_id: customer.id,
        tea_id: tea.id
      }

      post "/api/v1/customers/#{customer.id}/subscriptions",
           params: sub

      expect(response).to be_successful

      sub_data = JSON.parse(response.body, symbolize_names: :true)[:data]

      expect(sub_data[:id]).to be_an(String)

      expect(sub_data[:type]).to eq('subscription')

      expect(sub_data[:attributes].count).to eq(5)
      expect(sub_data[:attributes][:title]).to eq('test')
      expect(sub_data[:attributes][:price]).to eq(3.50)
      expect(sub_data[:attributes][:status]).to eq('active')
      expect(sub_data[:attributes][:frequency]).to eq(2)
    end
  end

  describe 'GET /api/vi/customers/:id/subscriptions' do
    it 'returns the subscriptions' do
      sub = FactoryBot.create(:subscription, customer_id: customer.id, tea_id: tea.id)
      FactoryBot.create(:subscription, customer_id: customer.id, tea_id: tea2.id)

      get "/api/v1/customers/#{customer.id}/subscriptions"

      expect(response).to be_successful

      sub_data = JSON.parse(response.body, symbolize_names: :true)[:data]

      expect(sub_data.first[:id]).to be_an(String)

      expect(sub_data.first[:type]).to eq('subscription')

      expect(sub_data.first[:attributes].count).to eq(5)
      expect(sub_data.first[:attributes][:title]).to eq(sub.title)
      expect(sub_data.first[:attributes][:price]).to eq(sub.price)
      expect(sub_data.first[:attributes][:status]).to eq(sub.status)
      expect(sub_data.first[:attributes][:frequency]).to eq(sub.frequency)
    end
  end

  describe 'PATCH /api/vi/customers/:id/subscriptions' do
    it 'modifies the subscriptions' do
      sub = Subscription.create(
        title: 'test',
        price: 3.50,
        status: 'active',
        frequency: 2,
        customer_id: customer.id,
        tea_id: tea.id
      )

      patch "/api/v1/customers/#{customer.id}/subscriptions/#{sub.id}"

      expect(response).to be_successful

      sub_data = JSON.parse(response.body, symbolize_names: :true)[:data]

      expect(sub_data[:id]).to be_an(String)

      expect(sub_data[:type]).to eq('subscription')

      expect(sub_data[:attributes][:status]).to eq('cancelled')
    end
  end
end
