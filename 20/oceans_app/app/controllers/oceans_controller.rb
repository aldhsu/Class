class OceansController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @oceans = Ocean.all
  end

  def show
    @ocean = Ocean.find(params["id"])
  end

  def new
  end

  def create
    Ocean.create(params.require(:ocean).permit(:name, :longitude, :latitude, :volume, :image))
    redirect_to root_path
  end

  def edit
    @ocean = Ocean.find(params["id"])
  end

  def delete
    @ocean = Ocean.find(params['id'])
    @ocean.destroy
    redirect_to root_path
  end
end
