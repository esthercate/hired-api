class Profile < ApplicationRecord
  belongs_to :job_seeker

  has_one_attached :image, dependent: :destroy

  has_one_attached :resume, dependent: :destroy

  validates :about_me, :description, :job_seeker_id, :experience_years, :salary_expectation, presence: true

  # validates :image, attached: true, content_type: [:png, :jpg, :jpeg], size: { between: 1.kilobyte..100.megabytes , message: 'is not given between size' }

  # Incase of bug check reume content type on msword source (active_storage_validations)

  # validates :resume, attached: true, content_type: { in: 'application/pdf', message: 'is not a PDF' }

end
