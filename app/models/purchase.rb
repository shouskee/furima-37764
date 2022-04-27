class Purchase < ApplicationRecord

  validates :user, presence: true
  validates :user, presence: true

  belongs_to :user
  belongs_to :item
  has_one : information

end
