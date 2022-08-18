class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :phone_number, format: { with: /(\A\+33|0)\s?[1-9]\W?(\d{2}\W?){4}\z/ }
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
