class AddPictureUrlToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :picture_url, :string
  end
end
