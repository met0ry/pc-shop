class CheckoutController < ApplicationController
  def add_to_cart_checkout
    current_user.cart.update(items: current_user.cart.items << {id: params[:id], type: params[:type]}.to_json)

    item = params["type"].constantize.find(params["id"])
    flash[:alert] = "#{item.tag} added to cart"

    redirect_to action: 'checkout'
  end

  def add_to_cart
    current_user.cart.update(items: current_user.cart.items << {id: params[:id], type: params[:type]}.to_json)

    item = params["type"].constantize.find(params["id"])
    flash[:alert] = "#{item.tag} added to cart"
    
    redirect_back(fallback_location: root_path)
  end

  def checkout
    @items = []

    current_user.cart.items.each do |item|
      hash = JSON.parse(item)
      @items << hash["type"].constantize.find(hash["id"])
    end
  end
end
