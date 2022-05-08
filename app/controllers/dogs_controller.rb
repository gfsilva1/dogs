class DogsController < ApplicationController
  require "json"
  require "open-uri"

  def index
    if params[:query].present?
      @dogs = Dog.batata(params[:query])
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

  end

  def popular
    @dogs = Dog.where(popularity: 5)
  end

  private

  def dog_params
    params.require(:dog).permit(:description, :temper, :origin, :popularity)
  end
end
