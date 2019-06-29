class AddDateBirthToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :date_birth, :date
  end
end
