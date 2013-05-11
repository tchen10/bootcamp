class Milestone < ActiveRecord::Base
  belongs_to :project
  has_many :tasks

  validates :title, :due_date, :date_created, :presence => true
end
