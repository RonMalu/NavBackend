class CreateStarPatterns < ActiveRecord::Migration[8.0]
  def change
    create_table :star_patterns do |t|
      t.string :name
      t.string :direction
      t.string :rising_point
      t.text :description

      t.timestamps
    end
  end
end
