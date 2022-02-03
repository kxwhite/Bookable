class RemoveDateAndTimeFromLessons < ActiveRecord::Migration[6.1]
  def up
    remove_column :lessons, :date, :date
    remove_column :lessons, :time, :time
  end

  def down
    remove_column :lessons, :date, :date
    remove_column :lessons, :time, :time
  end
end
