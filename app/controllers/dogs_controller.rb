class DogsController < ApplicationController
  def index
    if params[:query].present?
      @dogs = Dog.search_dogs(params[:query])
    else
      @dogs = Dog.all
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.save
    redirect_to dog_path(@dog)
  end

  def popular
    @dogs = Dog.where(popularity: 5)
  end

  def api
    require "json"
    require "open-uri"

    link = "https://api.thecatapi.com/v1/images/search?api_key=260eff8d-43b4-422f-9b69-1349794a6ce6"
    user_serialized = URI.open(link).read
    @user = JSON.parse(user_serialized)[0]["url"]
  end

  private

  def dog_params
    params.require(:dog).permit(:description, :temper, :origin, :popularity)
  end
end
