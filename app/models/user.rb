class User < ActiveRecord::Base
has_many :tweets ,inverse_of: :user
#Has many they followers /foreign_key has different name on database
#A User has many followings
#has_many :followings, foreign_key: 'followee_id'
#Has many people followers  the following database has followee_id that will be a Users follower

#Will return the people the user follows
has_many :followees  ,:class_name  =>"User",    through: :followes
#Will return the people that follow the user
has_many :followers  ,:class_name  =>"User",    through: :followings

#Will return the followings where user is the follower
has_many :followes   ,:class_name  =>"Following",:foreign_key =>'follower_id'
#Will return the followings where user is the followee
has_many :followings ,:class_name  =>"Following",:foreign_key =>'followee_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


def fullname
  if first_name != nil and last_name != nil
 @fullname = first_name + last_name
   else
    @fullname = email

  end
  return @fullname
end

 def userfollowers
  # @user_followes = User.joins(:followings.followee_id).where(user_id ("user_id is follwee_id")
 end

def createtweet
  end

  def twitterfollowers
    @followers = followers.all
 return @followers
  end

  def twitterfollowings
    @followers = followees.all
    return @followers
  end

 def numbertweets
  @tweets = tweets.count
    return @tweets
end

 def numberfollowings
@followings = followees.all.count

return @followings
end

  def numberfollowers
  @followers =  followers.all.count
    return @followers
  end

  def alltweets
  @alltwees = tweets.all
  end

  def followingstweets
    @followings = followees.all
    @followings.each do |t|
      return t.alltweets

    end
  end

  def followerstweets
    @followerss = followers.all
    @followerss.each do |t|
      t.alltweets
    end

  end
  end
