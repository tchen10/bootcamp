class AddStatusTable < ActiveRecord::Migration
  def change
    create_table :status do |t|
      t.integer :project_id
      t.string :status
      t.date  :date
    end
  end

    remove_column :projects, :date_completed
    remove_column :projects, :status
end
