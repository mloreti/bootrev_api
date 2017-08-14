class Boot < ApplicationRecord
  validates :brand, :model, :boot_type, :upper, presence: true
  has_many :reviews
end
