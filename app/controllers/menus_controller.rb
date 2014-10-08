class MenusController < ApplicationController
  def index
    render
  end

  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end

  def explore
    @count = increment_counter
    if @count < 3 then
      render :action => "index"
    else
      redirect_to :action => "suggest"
    end
  end
  
  def suggest
  end
end
