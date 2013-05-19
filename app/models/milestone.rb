class Milestone < ActiveRecord::Base
  attr_accessible :project_id, :title, :description, :date_created, :due_date
  belongs_to :project
  has_many :tasks

  validates :title, :project_id, :due_date, :date_created, :presence => true

end
