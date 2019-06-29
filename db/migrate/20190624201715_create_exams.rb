class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.references :patient, foreign_key: true
      t.references :types_exam, foreign_key: true
      t.references :point_n, index: true, foreign_key: { to_table: :points }
      t.references :point_a, index: true, foreign_key: { to_table: :points }
      t.references :point_po, index: true, foreign_key: { to_table: :points }
      t.references :point_or, index: true, foreign_key: { to_table: :points }

      t.timestamps
    end
  end
end
