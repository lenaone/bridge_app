class AddDateToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :date, :datetime
  end
end
