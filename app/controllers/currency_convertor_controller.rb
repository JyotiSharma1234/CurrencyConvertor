class CurrencyConvertorController < ApplicationController
  def show
    eu_bank = ::CurrencyRate.fetch
    render json: (eu_bank.exchange(params[:amount], params[:from], params[:to]).to_f)
  end
end
