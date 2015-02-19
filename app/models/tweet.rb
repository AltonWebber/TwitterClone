class Tweet < ActiveRecord::Base
  validates :user_id, presence: true
  validates :author_name, presence: true
  validates :tweet_date_of, presence: true
  validates :the_tweet, presence: true, length: {minimum: 1, maximum: 130}

  has_many :comments,foreign_key:"tweet_id"
  belongs_to :user, inverse_of: :tweets

  default_scope order('created_at desc')

end
