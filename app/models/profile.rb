class Profile < ApplicationRecord
  belongs_to :job_seeker

  has_one_attached :image, dependent: :destroy

  has_one_attached :resume, dependent: :destroy

  validates :about_me, :description, :job_seeker_id, :experience_years, :salary_expectation, presence: true
end
