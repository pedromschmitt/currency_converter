class ExchangeController < ApplicationController
  def index
  end

  def convert
    value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:value]).perform
    render json: {"value": value}
  end
end
