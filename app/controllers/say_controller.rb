class SayController < ApplicationController



 def signinredirect
   @user_signed_in = user_signed_in?
   if @user_signed_in == true
     redirect_to 'http://localhost:3000/say/goodbye'
 end


  def hello

  end
   end

  def goodbye
    showusertweets
  end

  def something
  end

  def create
  end

  def showusertweets
    if user_signed_in? == true
    @usertweets = current_user.tweets
    end
  end


end
