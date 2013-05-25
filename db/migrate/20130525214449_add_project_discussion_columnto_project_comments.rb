class AddProjectDiscussionColumntoProjectComments < ActiveRecord::Migration
  def change
    add_column :project_comments, :project_discussion_id, :integer
  end
end
