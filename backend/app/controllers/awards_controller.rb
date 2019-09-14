class AwardsController < ApplicationController
  def index
    @awardss = Award.all
    render json: @awardss
  end

  def show
    @awards = Award.find(params[:id])
    render json: @awards
  end

  def create
    @awards = Award.create(strong_params)
    render json: @awards, status: 201
  end

  def update
    @awards = Award.find(params[:id])
    unless @awards.nil?
      @awards.update(strong_params)
      render json: @awards
    else
      render json: { error: "Award not Found!" }, status: 404
    end
  end

  def destroy
    @awards = Award.find(params[:id])
    unless @awards.nil?
      @awards.destroy
      render json: @awards
    else
      render json: { error: "Award not Found!" }, status: 404
    end
  end

  private
  def strong_params
    params.require(:awards).permit(:id, :name, :demo, :image, :github)
  end
end
