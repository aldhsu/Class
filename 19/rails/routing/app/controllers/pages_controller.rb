class PagesController < ApplicationController
  def start
  end

  def a
  end

  def b
  end

  def door
    case params[:option]
    when '1' then redirect_to '/1'
    when '2' then redirect_to '/2'
    when '3' then redirect_to '/3'
    end
  end

  def one
  end
end