class Post < ApplicationRecord
  belongs_to :user
  has_many :ratings
  has_many :feedbacks
end
