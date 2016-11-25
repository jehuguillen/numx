class AddDescriptionToLesson < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :description, :text
  end
end
