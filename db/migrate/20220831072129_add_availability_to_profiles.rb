class AddAvailabilityToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :availability, :boolean
  end
end
