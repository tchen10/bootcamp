class EditTaskColumns < ActiveRecord::Migration
  def change
    remove_column :tasks, :date_created
    remove_column :tasks, :due_date

    add_column :tasks, :date_created, :date
    add_column :tasks, :due_date, :date
  end
end
