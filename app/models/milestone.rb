class Milestone < ActiveRecord::Base
  belongs_to :project

  validates :title, :due_date, :date_created, :presence => true
end
