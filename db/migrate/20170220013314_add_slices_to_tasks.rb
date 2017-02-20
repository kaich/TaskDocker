class AddSlicesToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :slices, :json
  end
end
