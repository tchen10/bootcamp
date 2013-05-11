class Project < ActiveRecord::Base
  has_many :assignments
  has_many :users, :through => :assignments
  has_many :statuses
  has_many :milestones

  validates :title, :date_created, :due_date, :presence => true

  def recent_status
    return self.statuses.last
  end
end
