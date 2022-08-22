class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :about_me
      t.string :description
      t.integer :job_seeker_id
      t.integer :experience_years
      t.integer :salary_expectation

      t.timestamps
    end
  end
end
