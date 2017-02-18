class AddAvatarToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :avatar, :string
  end
end
