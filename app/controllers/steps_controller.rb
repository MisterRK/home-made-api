class StepsController < ApplicationController
  def index
    steps = Step.all
    render :json => steps
  end

  def create
    step = Step.create(step_params)
    render :json => step
  end

  def proj_steps
    # byebug
    steps = Step.where(project_id: params[:id])
    render :json => steps
  end


  private
  def step_params
      params.require(:step).permit(:project_id, :heading, :content, :order, :image)
  end
end
