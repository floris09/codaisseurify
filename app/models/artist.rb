class Artist < ApplicationRecord
  has_many :songs

  validates :name, presence: true, length: { maximum: 50 }
  validates :bio, length: { maximum: 500 }

end
