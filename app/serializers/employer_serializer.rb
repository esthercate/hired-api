class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :phone_number, :role, :subscription, :company_name, :first_name, :last_name, :admin_id, :employer

  belongs_to :admin

end
