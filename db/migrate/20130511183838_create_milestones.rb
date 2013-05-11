class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.integer :project_id
      t.string :title
      t.string :description
      t.date :date_created
      t.date :due_date
    end
  end
end
