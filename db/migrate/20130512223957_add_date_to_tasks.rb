class AddDateToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :date_completed, :date
  end
end
