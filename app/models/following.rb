#Following has belong to the follower and the followee
#A follower is a user that wants to follow another user
#A followee is a user that is being followed by another user
#A follower should be able to see everyone they are following
#A followee should be able to see everyone that is following them
#A following is an instance of this relationship
class Following < ActiveRecord::Base
belongs_to :user
belongs_to :followee , :class_name => "User"
belongs_to :follower , :class_name => "User"


#SELECT "users".*
#FROM "users"
#INNER JOIN "followings"
#ON "users"."id" = "followings"."follower_id"
#WHERE "followings"."followee_id" = ? [["followee_id", 298486374]]

#SELECT "users".*
#FROM "users"
#INNER JOIN "followings"
#ON "users"."id" = "followings"."followee_id"
#WHERE "followings"."follower_id" = ?  [["user_id", 298486374]]



#works for followers
#belongs_to :follower , :class_name => "User" ,:inverse_of => :followee
#belongs_to :followee , :class_name => "User" ,:inverse_of => :follower


def numberfollowings
  @followings = current_user.followings.all.count
  if @followings  >= 0
    @followings =0
  end
  return @followings
end





end
