class ChangeCompleteColumninTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :complete

    add_column :tasks, :complete, :string
  end
end
