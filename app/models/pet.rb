class Pet < ApplicationRecord
  has_many :photos
  has_many :likes
  has_many :users, through: :likes
  has_many :comments, through: :photos
end
