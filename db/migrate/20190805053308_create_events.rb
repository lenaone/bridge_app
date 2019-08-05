class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :image_url
      t.string :date
      t.integer :time
      t.string :speaker
      t.integer :campus_id
      t.text :address

      t.timestamps
    end
  end
end
