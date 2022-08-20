class CreateJobSeekers < ActiveRecord::Migration[7.0]
  def change
    create_table :job_seekers do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.integer :phone_number
      t.string :password_digest
      t.string :role
      t.integer :admin_id
      t.integer :employer_id

      t.timestamps
    end
  end
end
