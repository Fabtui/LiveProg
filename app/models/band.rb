class Band < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :events
  has_many :band_favs, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  has_many_attached :photos
  has_many :band_styles, dependent: :destroy
  has_many :styles, through: :band_styles
  has_many :band_reviews

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [ :name, :description ],
                  using: { tsearch: { prefix: true } }

  pg_search_scope :style_search,
                  associated_against: {
                    styles: [ :style_type ]
                  },
                  using: { tsearch: { prefix: true } }

end
