class CreateCampus < ActiveRecord::Migration[5.2]
  def change
    create_table :campuses do |t|
      t.text :image_url
      t.text :address

      t.timestamps
    end
  end
end
