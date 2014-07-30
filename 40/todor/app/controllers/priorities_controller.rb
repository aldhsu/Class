class PrioritiesController < ApplicationController
  before_action :check_if_logged_in

  def index
    @priorities = @current_user.priorities.order(:urgency).reverse
    respond_to do |format|
      format.html{}
      format.json{ render json: @priorities}
    end
  end

  def create
    unless params[:id].present?
      #create new
      priority = Priority.new(name: params[:name], color: params[:color], urgency: params[:urgency])

    else
      #update old
      binding.pry
      priority = Priority.find(params[:id])
      priority.update(name: params[:name], color: params[:color], urgency: params[:urgency])
    end
    #save
    if priority.save
        @current_user.priorities << priority
        render json: priority
    else
      raise "Argh"
    end
  end

  private
  def check_if_logged_in
    redirect_to(root_path) unless @current_user
  end

end
