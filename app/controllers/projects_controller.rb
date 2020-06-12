class ProjectsController < ApplicationController

  def index
    projects = Project.all.with_attached_image
    render :json => projects
  end

  def create
    # byebug
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
  
  def edit
    project = Project.find(params[:id])
    steps = Step.where()
  end
  

  private
  def project_params
    params.require(:project).permit(:title, :user_id, :image, :likes)
  end
end
