class Rating < ApplicationRecord
  belongs_to :post
  validates :vote, length: { is: 1 }, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
