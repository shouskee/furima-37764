FactoryBot.define do
  factory :user do
    nickname { 'tarou' }
    second_name { '佐々木' }
    first_name { '太郎' }
    second_kana { 'ササキ' }
    first_kana { 'タロウ' }
    birthday { '2000-01-01' }
    email { Faker::Internet.free_email }
    password { '111aaa' }
    password_confirmation { password }
  end
end
