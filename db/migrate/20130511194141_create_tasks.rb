class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :milestone_id
      t.string :description
      t.date :date_created
      t.date :due_date
      t.integer :user_id
      t.string :status
    end
  end
end
