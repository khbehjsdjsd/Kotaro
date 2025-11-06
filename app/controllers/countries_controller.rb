class CountriesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
 

  def create
    country = Country.new(country_params)
    country.user_id = current_user.id
    if country.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end
  
  def show
    @country = Country.find(params[:id])
  end
  def edit
    @country = Country.find(params[:id])
  end
   def destroy
    country = Country.find(params[:id])
    country.destroy
    redirect_to action: :index
  end
  private
  def country_params
    params.require(:country).permit(:locate, :image, :date, :charm)
  end
end
