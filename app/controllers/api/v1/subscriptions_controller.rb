class Api::V1::SubscriptionsController < ApplicationController
  def index
    render json: SubscriptionSerializer.new( Customer.find(params[:customer_id]).subscriptions)
  end

  def create
    subscription = Subscription.create!(subscription_params)
    render json: SubscriptionSerializer.new(subscription), status: 201
  end

  def update
   sub = Subscription.find(params[:id])
   if sub.status == "active"
     sub.update_attribute(:status, 1)
     render json: SubscriptionSerializer.new(sub)
   end
  end

  private

  def subscription_params
    params.permit(:title, :price, :status, :frequency, :tea_id, :customer_id)
  end
end
