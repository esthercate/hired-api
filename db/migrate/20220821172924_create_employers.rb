class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :user_name
      t.string :email
      t.integer :phone_number
      t.string :password_digest
      t.string :role
      t.boolean :subscription
      t.string :company_name
      t.string :first_name
      t.string :last_name
      t.integer :admin_id
      t.string :employer

      t.timestamps
    end
  end
end
