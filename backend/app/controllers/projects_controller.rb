class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: @projects
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end

  def create
    @project = Project.create(strong_params)
    render json: @project, status: 201
  end

  def update
    @project = Project.find(params[:id])
    unless @project.nil?
      @project.update(strong_params)
      render json: @project
    else
      render json: { error: "Project not Found!" }, status: 404
    end
  end

  def destroy
    @project = Project.find(params[:id])
    unless @project.nil?
      @project.destroy
      render json: @project
    else
      render json: { error: "Project not Found!" }, status: 404
    end
  end

  private
  def strong_params
    params.require(:project).permit(:id, :name, :demo, :image, :github, :discription, :created)
  end

end