class Bar < ApplicationRecord
  has_many :events
  has_many :bar_favs, dependent: :destroy

  has_many_attached :photo
end
