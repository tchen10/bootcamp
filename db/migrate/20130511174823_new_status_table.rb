class NewStatusTable < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :project_id
      t.string :description
      t.date :date
    end
  end
end
