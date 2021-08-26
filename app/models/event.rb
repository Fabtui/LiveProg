class Event < ApplicationRecord
  belongs_to :band
  belongs_to :bar
  has_many :participations
  validates :start_date, presence: true
  validates :bar_id, presence: true, uniqueness: { scope: :start_date }

  scope :future, -> { where(start_date: DateTime.now..2.years.from_now) }
  scope :sorted_by_date, -> { order(start_date: :asc) }
end
