class CreateLevels < ActiveRecord::Migration[7.1]
  def change
    create_table :levels do |t|
      t.string :name
      t.text :exercise
      t.boolean :completed
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
