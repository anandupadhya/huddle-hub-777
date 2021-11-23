class Profile < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :user, uniqueness: true
end
