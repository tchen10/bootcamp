class Milestone < ActiveRecord::Base
  attr_accessible :project_id, :title, :description, :date_created, :due_date
  belongs_to :project
  has_many :tasks, dependent: :restrict

  validates :title, :project_id, :due_date, :date_created, :presence => true

  def Milestone.complete
    complete = []
    Milestone.all.each do |milestone|
      if milestone.tasks.complete.count == milestone.tasks.count && milestone.tasks.count != 0
        complete << milestone
      end
    end
    return complete
  end

  def Milestone.incomplete
    incomplete = []
    Milestone.all.each do |milestone|
      unless milestone.tasks.complete.count == milestone.tasks.count && milestone.tasks.count != 0
        incomplete << milestone
      end
    end
    return incomplete
  end

end
