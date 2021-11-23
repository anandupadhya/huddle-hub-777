class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :collaborations
  has_many :projects, through: :collaborations
  has_one :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :create_profile

  private

  def create_profile
    Profile.create(user_id: self.id)
  end
end
