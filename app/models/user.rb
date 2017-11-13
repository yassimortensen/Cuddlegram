class User < ApplicationRecord
  has_many :likes
  has_many :comments
  has_many :pets, through: :likes
  has_many :photos, through: :comments
end
