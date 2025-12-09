class MakeObservationsNullTrue < ActiveRecord::Migration[8.0]
  def change
    change_column_null :observations, :star_pattern_id, true
    change_column_null :observations, :wave_pattern_id, true
    change_column_null :observations, :bird_migration_id, true
  end
    

end
