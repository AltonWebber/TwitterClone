class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.string :the_comment
      t.integer   :tweet_id

      t.timestamps null: false
    end
  end
end
