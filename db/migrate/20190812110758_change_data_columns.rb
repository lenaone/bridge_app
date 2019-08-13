class ChangeDataColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :date, :datetime
    change_column :services, :start_time, :datetime
    change_column :news, :date, :datetime
    change_column :podcasts, :date, :datetime
  end
end
