class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :review
  has_reputation :points, source: :user, source_of: [ reputation: :comment_points, of: :user ]
end
