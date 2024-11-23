class Article < ApplicationRecord
  belongs_to :user
  has_many :ratings

  def average_rating
    return 0 if ratings.empty?
    ratings.average(:rating).round(2)
  end
end
