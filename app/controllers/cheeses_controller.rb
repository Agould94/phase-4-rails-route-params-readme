class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using ID from URL
    # send JSON response using cheese obj

    #byebug
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
  end

end
