class Rating < ActiveRecord::Base
  belongs_to :article
  belongs_to :user

  validates :score, inclusion: { in: 0..5 }
end
