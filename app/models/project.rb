class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :collaborations, dependent: :destroy
  has_many :project_updates, dependent: :destroy
  has_many :users, through: :collaborations
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :description, presence: true, length: {  minimum: 3 }
  validates :status, inclusion: { in: ['open', 'closed', 'completed'] }
end
