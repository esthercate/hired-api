class AddVerifiedToJobSeekers < ActiveRecord::Migration[7.0]
  def change
    add_column :job_seekers, :verified, :string
  end
end
