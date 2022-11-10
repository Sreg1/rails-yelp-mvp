class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w[chinese italian japanese french belgian]

  validates :name, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
