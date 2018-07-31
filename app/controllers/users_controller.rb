class UsersController < ApplicationController
  def new
  end

  def create
  	@user = User.create(name: params[:name], bio: params[:bio])
  	redirect_to "/show/#{@user.name}"

  end

  def show
  	@user = User.find_by_name(params[:name])
  end


end
