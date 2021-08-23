class Bar < ApplicationRecord
  has_many :events
  has_many :bar_favs, dependent: :destroy
end
