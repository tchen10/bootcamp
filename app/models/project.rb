class Project < ActiveRecord::Base
  attr_accessible :title, :description, :date_created, :due_date
  has_many :assignments
  has_many :users, :through => :assignments
  has_many :statuses
  has_many :milestones, dependent: :restrict
  has_many :tasks, dependent: :restrict
  has_many :project_discussions

  validates :title, :date_created, :due_date, :presence => true

  def recent_status
    return self.statuses.last
  end

  def Project.complete
    complete = []
    Project.all.each do |project|
      if project.recent_status.description == "Complete"
        complete << project
      end
    end
    return complete
  end

  def Project.incomplete
    incomplete = []
    Project.all.each do |project|
      unless project.recent_status.description == "Complete"
        incomplete << project
      end
    end
    return incomplete
  end

end
