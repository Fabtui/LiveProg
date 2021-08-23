class BandFav < ApplicationRecord
  belongs_to :user
  belongs_to :band
end
