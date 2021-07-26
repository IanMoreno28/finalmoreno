class CreateLaps < ActiveRecord::Migration[6.1]
  def change
    create_table :laps do |t|
      t.integer :lap_number
      t.integer :position
      t.time :time
      t.references :race, null: false, foreign_key: true
      t.references :pilot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
