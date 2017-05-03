class HomeController < ApplicationController
  def Login
    render "Login"
    @home = Home.new
    # @Home= Home.find(params[:id])

  end
  def Store
    render "Store"
  end
  def ContactUs
    render "ContactUs"
    @home = Home.all
    # @Home = Home.find(params[:id])
  end

  def blogs
    # @Home= Home.find(params[:id])
  end
  def create
    @home = Home.new(Home_params)
    if @home.save
      redirect_to @Home
    else
      render'index'
    end
  end
  def index
    @home=Home.all
  end
  def show
    @home= Home.find(params[:id])
  end

  private
  def home_params
  end
end
