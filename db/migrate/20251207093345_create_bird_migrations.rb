class CreateBirdMigrations < ActiveRecord::Migration[8.0]
  def change
    create_table :bird_migrations do |t|
      t.string :bird_name
      t.string :movement_direction
      t.string :indicator
      t.text :description

      t.timestamps
    end
  end
end
