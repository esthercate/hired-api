class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :about_me, :description, :job_seeker_id, :experience_years, :salary_expectation, :image, :resume
end
