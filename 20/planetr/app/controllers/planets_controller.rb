class PlanetsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    #render text: 'test test test test'
    #planet = Planet.create params[:planet]
    Planet.create params.require(:planet).permit(:name, :image, :diameter, :mass, :moons)
    redirect_to planets_path
  end

  def show
    id = params["id"]
    @planet = Planet.find(id)
  end

  def destroy
    @planet = Planet.find(params["id"])
    @planet.destroy
    redirect_to planets_path
  end

  def edit
    @planet = Planet.find(params["id"])
  end

  def update
    @planet = Planet.find(params['id'])
    @planet.update params.require(:planet).permit(:name, :image, :diameter, :mass, :moons)
    redirect_to planets_path
  end
end