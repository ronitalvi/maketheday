class AtolyelersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_atolyeler, only: [:show, :edit, :update, :destroy]

  def index
    @atolyelers = policy_scope(Atolyeler).order(created_at: :desc)
  end

  def show
    authorize @atolyeler
  end

  def new
    @atolyeler = Atolyeler.new
  end

  def edit
  end

  def create
    @atolyeler = Atolyeler.new(atolyeler_params)
      if @atolyeler.save
        redirect_to @atolyeler, notice: 'Atolyeler was successfully created.'
      else
        render :new
      end
  end

  def update
    if @atolyeler.update(atolyeler_params)
      redirect_to @atolyeler, notice: 'Atolyeler was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @atolyeler.destroy
      redirect_to atolyelers_url, notice: 'Atolyeler was successfully destroyed.'
    end
  end

  private

  def set_atolyeler
    @atolyeler = Atolyeler.find(params[:id])
  end

  def atolyeler_params
    params.require(:atolyeler).permit(:picture_url)
  end
end
