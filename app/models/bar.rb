class Bar < ApplicationRecord
  has_many :events
  has_many :bar_favs, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [:name, :description, :address],
                  using: { tsearch: { prefix: true } }
end
