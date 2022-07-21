class User < ApplicationRecord
  pay_customer

  has_person_name

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets

  validates :username, uniqueness: true

  has_one_attached :profile_image
end
