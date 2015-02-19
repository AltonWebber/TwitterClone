class TweetsController < ApplicationController

def index
  @tweets = Tweet.all
end

def show
    @tweet = Tweet.find(params[:id])
end

def new
end

def create
 #render plain: params[:tweets].inspect
 #render plain: tweet_params
 #render plain:tweet_params
 #@tweets = Tweet.new(tweet_params)
  @tweet = current_user.tweets.new(tweet_params)
 #render plain: @tweets.the_tweet
    @tweet.author_name= current_user.fullname
    @tweet.tweet_date_of =Time.now
    @tweet.save
   redirect_to 'http://localhost:3000/say/goodbye'
end

def retweet

end


def update
  tweet = current_user.tweets.find(params[:id])
  tweet.update!(tweet_params)
  redirect_to 'http://localhost:3000/say/goodbye'
end


private
  def tweet_params
    params.require(:tweets).permit(:author_name,:tweet_date_of,:the_tweet)
  end

end
