class CreateObservations < ActiveRecord::Migration[8.0]
  def change
    create_table :observations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :star_pattern, null: false, foreign_key: true
      t.references :wave_pattern, null: false, foreign_key: true
      t.references :bird_migration, null: false, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
