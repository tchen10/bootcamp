class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.date :date_created
      t.date :date_completed
      t.date :due_date
      t.string :status
    end
  end
end
