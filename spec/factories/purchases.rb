FactoryBot.define do
  factory :purchase_information do
    token { 'tok_abcdefghijk00000000000000000' }
    postal_code { '123-4567' }
    area_id { 2 }
    city_name { 'test' }
    address { 'test' }
    building_name{'ใในใ'}
    telephone_number { '09012345678' }
  end
end
