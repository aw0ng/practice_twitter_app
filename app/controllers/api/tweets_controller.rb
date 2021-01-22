class Api::TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render "index.json.jb"
  end

  def show
    @tweet = Tweet.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @tweet = Tweet.new(
      text: params[:text],
      user_id: params[:user_id] 
      )
    @tweet.save
    render "show.json.jb"
  end

  def update
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.text = params[:text] || @tweet.text
    @tweet.user_id = params[:text] || @tweet.user_id
    @tweet.save
    render "show.json.jb"
  end

  def destroy
    tweet = Tweet.find_by(id: params[:id])
    tweet.destroy
    render json: {message: "Tweet successfully destroyed."}
  end
end
