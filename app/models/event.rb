class Event < ApplicationRecord
  belongs_to :band
  belongs_to :bar
  has_many :participations
end
