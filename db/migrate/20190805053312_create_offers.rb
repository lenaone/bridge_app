class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :amount
      t.string :float
      t.string :campus
      t.string :giving_type

      t.timestamps
    end
  end
end
