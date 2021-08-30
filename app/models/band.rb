class Band < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :band_reviews
  has_many :events
  has_many :band_favs, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  has_many_attached :photos
  has_many :band_styles, dependent: :destroy
  has_many :styles, through: :band_styles

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name ],
    associated_against: {
      descriptions: [ :description_type]
    },
    using: { tsearch: { prefix: true } }
end
