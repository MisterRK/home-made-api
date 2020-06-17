class StepsController < ApplicationController
  def index
    steps = Step.all
    render :json => steps
  end

  def create
    step=Step.new()
    # byebug
    step.heading=params[:heading]
    step.content=params[:content]
    step.order=params[:order]
    step.project_id=params[:project_id]
    step.image.attach(params[:image])
    step.save()
    render json: step
  end

  def proj_steps
    steps = Step.where(project_id: params[:id])
    render :json => steps
  end

  def show
    step = Step.find(params[:id])
    render :json => step
  end

  def update
    step = Step.find(params[:id])
    step.update(step_params)
    render :json => step
  end

  def show_image
    step = Step.find(params[:id])
    attachment = rails_blob_path(step.image)
    render :json => {image: attachment}
  end


  private
  def step_params
      params.require(:step).permit(:project_id, :heading, :content, :order, :image)
  end
end
