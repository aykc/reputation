class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :review
  has_reputation :points, source: :user
end
