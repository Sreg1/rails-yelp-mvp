class Restaurant < ApplicationRecord
  has_many :reviews, dependant: :destroy

  CATEGORIES = %w[chinese, italian, japanese, french, belgian]

  validates :name, presence: true
  validates :categories, inclusion: { in: CATEGORIES }
end
