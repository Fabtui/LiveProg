class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :band_reviews
  has_one :owned_band, class_name: "Band"
  has_many :band_favs
  has_many :favorite_bands, through: :band_favs, source: :band
  has_many :bar_favs
  has_many :favorite_bars, through: :bar_favs, source: :bar
  has_many :participations
  has_one_attached :avatar
  validates :nickname, presence: true, uniqueness: true
end
