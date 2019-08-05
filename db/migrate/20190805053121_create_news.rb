class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.text :image_url
      t.string :date
      t.string :title
      t.text :description
      t.integer :campus_id

      t.timestamps
    end
  end
end
