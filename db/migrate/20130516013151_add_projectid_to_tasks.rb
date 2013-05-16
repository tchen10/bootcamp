class AddProjectidToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :project_id, :integer
    add_column :users, :image_url, :string
    add_column :users, :birthday, :date
    add_column :users, :home, :string
    add_column :users, :bio, :string

    create_table :user_statuses do |t|
      t.integer :user_id
      t.string :description
      t.date :date_created
    end
  end
end
