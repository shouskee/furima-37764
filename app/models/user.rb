class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :second_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥ー]/ }
  validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥ー]/ }
  validates :second_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :first_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :birthday, presence: true

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'

  # has_many :items
  # has_many :purchases
end
