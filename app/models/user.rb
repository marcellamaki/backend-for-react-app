class User < ApplicationRecord

  has_many :decks
  has_many :cards, through: :decks
  has_secure_password

end
