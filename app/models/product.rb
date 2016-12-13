class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, numericality: { greater_than: 0 }

  has_and_belongs_to_many :sizes, uniq: true
end
