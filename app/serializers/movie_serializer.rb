class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :movie_length, :director, :rating
  has_one :user
end
