class Participation < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :event_id, presence: true, uniqueness: { scope: :user_id }
end
