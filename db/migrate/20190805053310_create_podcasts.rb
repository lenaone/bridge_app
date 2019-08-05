class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :date
      t.string :title
      t.text :url
      t.integer :campus_id

      t.timestamps
    end
  end
end
