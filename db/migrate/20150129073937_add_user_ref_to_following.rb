class AddUserRefToFollowing < ActiveRecord::Migration
  def change
    add_belongs_to(:followings,:follower, index: true  )
    add_belongs_to(:followings,:followee,index: true  )

    add_foreign_key :followings,:users ,  column:  :follower_id, primary_key: "id", index: true
    add_foreign_key :followings,:users ,  column:  :followee_id, primary_key: "id", index: true
  end
end
