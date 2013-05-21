class ProjectDiscussion < ActiveRecord::Base
  attr_accessible :post, :project_id, :user_id

  validates :post, :project_id, :user_id, :presence => true
  belongs_to :project
  belongs_to :user
end
