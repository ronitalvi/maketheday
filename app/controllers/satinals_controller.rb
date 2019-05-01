class SatinalsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @satinals = Satinal.all
    @satinals = policy_scope(Satinal).order(created_at: :desc)
  end

  def show
    @satinal = Satinal.find(params[:id])
    authorize @satinal
  end
end
