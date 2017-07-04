class Review < ApplicationRecord
  validates :author, :content, :rating, :presence => true
  validates :content, length: { in: 50..200 }
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  belongs_to :product
end
