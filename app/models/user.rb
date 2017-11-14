class User < ApplicationRecord
  has_many :likes
  has_many :comments
  has_many :pets, through: :likes
  has_many :photos, through: :comments
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..20 }

  def instagram_account_link
    link = "https://www.instagram.com/#{self.instagram_handle}"
    link
  end

end
