class Movie < ApplicationRecord
  has_many :reviews
  belongs_to :user

  validates :user_id,:title,presence:true

  def self.moviehighestrating
    ActiveRecord::Base.connection.execute("select movie_id,avg(rating) as rating from reviews where movie_id IN(select movie_id from movies) group by movie_id order by rating desc limit 1")
  end

end
