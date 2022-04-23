FactoryBot.define do
  factory :item do
    product_name { 'test' }
    explanation { 'test' }
    category_id { 2 }
    condition_id  { 2 }
    load_id { 2 }
    area_id { 2 }
    shipping_day_id { 2 }
    selling_price { 900 }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
