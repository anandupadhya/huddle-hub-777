class Profile < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :user, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
