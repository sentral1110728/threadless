class Article < ApplicationRecord
  has_many :category_articles, dependent: :destroy
  has_many :categories, through: :category_articles
  belongs_to :user
  accepts_nested_attributes_for :category_articles

  validates :title, presence: true, length: { maximum: 50 }
end
