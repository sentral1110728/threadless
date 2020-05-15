class Category < ApplicationRecord
  has_many :articles, through: :category_articles
  has_many :category_articles, dependent: :destroy

  validates :name, presence: true, length: { maximum: 20 }
end
