class ChangeDateFromDateToString < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :date, :string
  end
end
