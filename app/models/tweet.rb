class Tweet < ApplicationRecord
  belongs_to :user

  validates :body, lenght: { maximum: 240 }, allow_blank: false
end
