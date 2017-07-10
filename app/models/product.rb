class Product < ApplicationRecord
  validates :name, :cost, :origin, :presence => true
  has_many :reviews

  scope :most_reviews, -> {(
   select("products.name, products.id, count(reviews.id) as reviews_count")
   .joins(:reviews)
   .group("products.id")
   .order("reviews_count DESC")
   .limit(5)
   )}

   scope :local, -> {where("origin=?",  "Kenya")}

   scope :most_recent, -> { order(created_at: :desc).limit(3)}
end
