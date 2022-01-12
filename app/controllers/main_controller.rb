class MainController < ApplicationController
  def index
  end

  def show
    @home = Hash.new
    @home[:welcome] = "ようこそBarBarEatsへ"
  end
end
