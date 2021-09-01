class Style < ApplicationRecord
  has_many :band_styles
  has_many :bands, through: :band_styles
  STYLES = Style.all.map(&:style_type)
end
