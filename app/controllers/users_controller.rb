class UsersController < ApplicationController
  def new
  end

  def create
  	user = User.create(name: params[:name], bio: params[:bio])
  	redirect_to "/users/#{user.id}"

  end

  def show
  	@user = User.find(params[:id])
  end


end
