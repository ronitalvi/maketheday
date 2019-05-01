class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :referanslar, :kimdir, :iletisim]

  def home
  end
end
