class Information < ApplicationRecord
  
  validates :postal_code,      presence: true
  validates :area_id   ,       presence: true
  validates :city_name,        presence: true
  validates :address,          presence: true
  validates :building_name
  validates :telephone_number, presence: true
  validates :purchase,         presence: true

  belongs_to :purchase

end
