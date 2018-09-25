class CurrenciesController < ApplicationController
  def index
   	render json: ::CURRENCIES
  end
end
