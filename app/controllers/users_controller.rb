class UsersController < ApplicationController
  def index
    users = User.all
    render :json => users
  end
  def show
    user =User.find(params[:id])
    projects = Project.where(user_id: params[:id])
    render :json => projects
  end
end
