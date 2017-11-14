class Pet < ApplicationRecord
  has_many :photos
  has_many :likes
  has_many :users, through: :likes
  has_many :comments, through: :photos

  def self.random_photo_for_each_pet
    self.all.map do |pet|
      pet.photos.shuffle.first
    end
  end

  def all_photos #returns an array of all photo objects
    photos = Photo.where(pet_id: self.id)
  end

  def new_photo #shuffles photos and returns first photo object
    all_photos.shuffle.first
  end

  def all_photos_url # returns an array of all photo urls
    photos = Photo.where(pet_id: self.id)
    photos.map do |photo|
      photo.url
    end
  end
end
