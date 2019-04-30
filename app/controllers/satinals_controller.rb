class SatinalsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @satinals = Satinal.all
  end

  def show
    @satinal = Satinal.find(params[:id])
  end
end
