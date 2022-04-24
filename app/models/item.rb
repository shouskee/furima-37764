class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :category
  belongs_to :condition
  belongs_to :load
  belongs_to :shipping_day
  belongs_to :user

  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :condition_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :load_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :area_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :shipping_day_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :product_name, presence: true
  validates :explanation, presence: true
  validates :selling_price, presence: true
  validates :image, presence: true

  validates :selling_price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 },
                            presence: true

  has_one_attached :image
end
