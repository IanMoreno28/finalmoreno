class CreatePilotTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :pilot_teams do |t|
      t.references :team, null: false, foreign_key: true
      t.references :pilot, null: false, foreign_key: true
      t.references :championship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
