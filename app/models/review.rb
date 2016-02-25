class Review < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  has_reputation :points, source: :user, source_of: [ reputation: :review_points, of: :user ]
end
