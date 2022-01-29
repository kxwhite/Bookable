class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :location
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
