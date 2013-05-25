class ProjectComment < ActiveRecord::Base
  attr_accessible :post, :project_id, :user_id, :project_discussion_id
  belongs_to :project_discussion
  belongs_to :user
end
