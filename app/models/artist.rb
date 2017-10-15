class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_one :photo, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :bio, length: { maximum: 1000 }

  def self.order_by_name
    order :name
  end

  def self.order_by_name_desc
    order name: :desc
  end

  def self.order_by_created_at
    order :created_at
  end

  def self.order_by_created_at_desc
    order created_at: :desc
  end
end
