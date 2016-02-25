class User < ActiveRecord::Base
  has_many :reviews
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_reputation :karma, source: [{ reputation: :review_points }, { reputation: :comment_points }]
  has_reputation :review_points, source: [ reputation: :points, of: :reviews ]
  has_reputation :comment_points, source: [ reputation: :points, of: :comments ]
end
