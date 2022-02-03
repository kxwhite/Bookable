class AddUserToLesson < ActiveRecord::Migration[6.1]
  def change
    add_reference :lessons, :user, null: false, foreign_key: true
  end
end
