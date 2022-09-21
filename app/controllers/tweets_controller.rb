class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render template: "tweets/index"
  end

  def new
    @tweets = Tweet.new
    render template: "tweets/new"
  end

  def create
    @tweets = Tweet.new(
      user_id: params[:tweets][:user_id],
      text: params[:tweets][:text],
    )
    @tweets.save
    redirect_to "/tweets"
  end
end
