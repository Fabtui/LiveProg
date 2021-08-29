class BandReview < ApplicationRecord
  belongs_to :user
  belongs_to :band

  validates :comment, length: { maximum: 120 }
  validates :rating, presence: true, numericality: :integer
  validates :user_id, presence: true, uniqueness: { scope: :band_id }
end
