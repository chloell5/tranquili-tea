RSpec.describe 'Customer API' do
  describe 'GET /api/vi/customers/:id' do
    let!(:customer) { FactoryBot.create(:customer) }

    before { get "/api/v1/customers/#{customer.id}" }

    it 'returns the customer' do
      expect(response).to be_successful

      customer_data = JSON.parse(response.body, symbolize_names: :true)[:data]

      expect(customer_data).to have_key(:id)
      expect(customer_data[:id]).to be_an(String)
      expect(customer_data[:id]).to eq customer.id.to_s

      expect(customer_data[:type]).to eq("customer")

      expect(customer_data[:attributes].count).to eq(5)
      expect(customer_data[:attributes][:id]).to eq(customer.id)
      expect(customer_data[:attributes][:first_name]).to eq(customer.first_name)
      expect(customer_data[:attributes][:last_name]).to eq(customer.last_name)
      expect(customer_data[:attributes][:email]).to eq(customer.email)
      expect(customer_data[:attributes][:address]).to eq(customer.address)
    end
  end
end
