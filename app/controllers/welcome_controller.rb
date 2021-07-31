class WelcomeController < ApplicationController
  def index
    render json: {message: "Omnirio ATM"}
  end
end
