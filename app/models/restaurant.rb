class Restaurant < ApplicationRecord
  # associations
  has_many :reviews, dependent: :destroy

  # validations
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
