class Comment < ApplicationRecord
  belongs_to :photo
  belongs_to :user

  validates :content, presence: true
  validates :content, length: { minimum: 1, maximum: 400}

end
