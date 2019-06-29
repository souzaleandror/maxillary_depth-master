class CreateTypesExams < ActiveRecord::Migration[5.2]
  def change
    create_table :types_exams do |t|
      t.string :name
      t.boolean :active
      t.string :slug

      t.timestamps
    end
    add_index :types_exams, :name, unique: true
    add_index :types_exams, :slug, unique: true
  end
end
