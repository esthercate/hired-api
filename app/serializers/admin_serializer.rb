class AdminSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :role

  has_many :employers
end
