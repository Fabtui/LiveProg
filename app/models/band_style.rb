class BandStyle < ApplicationRecord
  belongs_to :style
  belongs_to :band

  validates :band_id, uniqueness: { scope: :style_id }
end
