class Project < ActiveRecord::Base
  attr_accessible :title, :description, :date_created, :due_date
  has_many :assignments
  has_many :users, :through => :assignments
  has_many :statuses
  has_many :milestones, dependent: :restrict
  has_many :tasks, dependent: :restrict

  validates :title, :date_created, :due_date, :presence => true

  def recent_status
    return self.statuses.last
  end

end
