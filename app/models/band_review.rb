class BandReview < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)

  belongs_to :user
  belongs_to :band

  validates :comment, length: { maximum: 120 }
  validates :user_id, presence: true, uniqueness: { scope: :band_id }
  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
end
