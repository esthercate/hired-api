class Profile < ApplicationRecord
  belongs_to :job_seeker

  has_one_attached :image
end
