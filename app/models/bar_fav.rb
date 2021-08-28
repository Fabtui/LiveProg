class BarFav < ApplicationRecord
  belongs_to :user
  belongs_to :bar

  validates :bar_id, presence: true, uniqueness: { scope: :user_id }
end
