class CreateProjectDiscussions < ActiveRecord::Migration
  def change
    create_table :project_discussions do |t|
      t.string :post
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
