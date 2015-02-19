class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :the_tweet
      t.string :author_name
      t.datetime :tweet_date_of

      t.timestamps null: false
    end
  end
end
