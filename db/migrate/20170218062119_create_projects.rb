class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :start_time
      t.date :end_time

      t.timestamps
    end
  end
end
