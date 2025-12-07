class CreateWavePatterns < ActiveRecord::Migration[8.0]
  def change
    create_table :wave_patterns do |t|
      t.string :name
      t.string :direction
      t.string :consistency
      t.text :description

      t.timestamps
    end
  end
end
