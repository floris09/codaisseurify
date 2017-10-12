class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :bio, length: { maximum: 1000 }

end
