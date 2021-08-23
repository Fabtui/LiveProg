class Band < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :band_reviews
  has_many :events
  has_many :band_favs, dependent: :destroy
end
