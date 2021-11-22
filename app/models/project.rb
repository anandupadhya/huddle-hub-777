class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :collaborations, dependent: :destroy
  has_many :project_updates, dependent: :destroy
  has_many :users, through: :collaborations
end
