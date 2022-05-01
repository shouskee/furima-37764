class PurchaseInformation
    include ActiveModel::Model
    attr_accessor :user_id, :item_id, :postal_code, :area_id, :city_name, :address, :building_name, :telephone_number, :purchase, :token
    with_options presence: true do
      validates  :user_id
      validates  :item_id
      validates  :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
      validates  :area_id, numericality: { other_than: 1, message: "can't be blank" }
      validates  :city_name
      validates  :address
      validates  :telephone_number
      validates  :token

    end

  def save
    purchase = Purchase.create(item_id: item_id, user_id: user_id)
    Information.create(postal_code: postal_code, area_id: area_id, city_name: city_name, address: address, building_name: building_name, telephone_number: telephone_number, purchase_id: purchase.id)
  end
end  