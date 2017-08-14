class Review < ApplicationRecord
  validates :user_id, :boot_id, :rating, presence: true
  validates :user_id, uniqueness: true

  belongs_to :boot
  belongs_to :user
end
