class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @user = User.new(
      username: params[:username],
      email: params[:email] 
      )
    @user.save
    render "show.json.jb"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.username = params[:username] || @user.username
    @user.email = params[:username] || @user.email
    @user.save
    render "show.json.jb"
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "Tweet successfully destroyed."}
  end
end
