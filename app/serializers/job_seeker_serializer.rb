class JobSeekerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :email, :phone_number, :role, :admin_id, :employer_id

  has_one :profile
end
