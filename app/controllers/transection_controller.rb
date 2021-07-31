class TransectionController < ApplicationController
  def atm
    amount = params[:input_amount].to_i
    res = Coin.calculate_cash(amount)
    if res[:status] == 200
      render json: {response: res[:response], status: res[:status]}
    else
      render json: {response: res[:response], error: res[:status]}
    end
  end
end
