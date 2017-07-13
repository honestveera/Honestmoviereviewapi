class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  #Vaalidation
  validates :rating,presence:true,inclusion: { in:[1,2,3,4,5]}
  validates :user_id,:movie_id,presence:true

end
