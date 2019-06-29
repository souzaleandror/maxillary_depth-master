class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.integer :point_type
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
