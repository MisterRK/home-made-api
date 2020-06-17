class ProjectsController < ApplicationController

  def index
    projects = Project.all.with_attached_image
    render :json => projects
  end

  def create
    project=Project.new()
    project.title=params[:title]
    project.user_id=params[:user_id]
    project.image.attach(params[:image])
    project.likes= 0
    project.save()

    render json: project
  end

  

  def show
    project = Project.find(params[:id])
    render :json => project
  end
  
  def show_image
    project = Project.find(params[:id])
    attachment = rails_blob_path(project.image)
    render :json => {image: attachment}
  end
  
  def update
    project = Project.find(params[:id])
    project.title = params[:title]
    project.user_id= params[:user_id]
    project.likes = params[:likes]
    project.save

    render :json => project
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy()

    render json: project
  end
  

  private
  def project_params
    params.require(:project).permit(:title, :user_id, :image, :likes)
  end
end
