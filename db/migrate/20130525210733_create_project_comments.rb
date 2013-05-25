class CreateProjectComments < ActiveRecord::Migration
  def change
    create_table :project_comments do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :post

      t.timestamps
    end
  end
end
