class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :campus_id
      t.integer :start_time
      t.string :day_of_week

      t.timestamps
    end
  end
end
