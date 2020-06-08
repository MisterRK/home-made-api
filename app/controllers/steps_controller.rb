class StepsController < ApplicationController
  def index
    steps = Step.all
    render :json => steps
  end
end
