class Article < ApplicationRecord
  belongs_to :user
  has_many :ratings

  after_create :create_initial_rating

  private def create_initial_rating
    @user = user
    Rating.create(article_id: self.id, user_id: @user.full_name, score: 0) if user.present?
  end
  def average_rating
    @ratings = ratings.where.not(score: 0)
    return 0 if @ratings.empty?
    @ratings.average(:score).round(2)
  end
end
