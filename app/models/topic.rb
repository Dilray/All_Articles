class Topic < ApplicationRecord
  belongs_to :article, foreign_key: 'topics_id'
end
