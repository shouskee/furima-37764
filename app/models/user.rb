class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname, presence: true
    validates :second_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥々ー]+\z/ }
    validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥々ー]+\z/ }
    validates :second_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :first_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :birthday, presence: true

    PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
    validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'
  end

  has_many :items
  has_many :purchases
end
