class AddDifficultyLevelToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :difficulty_level, :string
  end
end
