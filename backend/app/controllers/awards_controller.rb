class AwardsController < ApplicationController
  def index
    @awards = Award.all
    render json: @awards
  end

  def show
    @award = Award.find(params[:id])
    render json: @award
  end

  def create
    @award = Award.create(strong_params)
    render json: @award, status: 201
  end

  def update
    @award = Award.find(params[:id])
    unless @award.nil?
      @award.update(strong_params)
      render json: @award
    else
      render json: { error: "Award not Found!" }, status: 404
    end
  end

  def destroy
    @award = Award.find(params[:id])
    unless @award.nil?
      @award.destroy
      render json: @award
    else
      render json: { error: "Award not Found!" }, status: 404
    end
  end

  private
  def strong_params
    params.require(:award).permit(:id, :name, :demo, :image, :github)
  end
end
