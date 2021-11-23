class Collaboration < ApplicationRecord
  belongs_to :project
  belongs_to :user
  # validates :project, uniqueness: { scope: :user }
  # validates :status, inclusion: { in: ['pending', 'accepted', 'deniedga'] }
end
