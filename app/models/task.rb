class Task < ActiveRecord::Base
  attr_accessible :project_id, :milestone_id, :description, :date_created, :due_date, :date_completed, :user_id, :status, :complete
  belongs_to :milestone
  belongs_to :user
  belongs_to :project

  validates :project_id, :milestone_id, :date_created, :due_date, :user, :complete, :date_completed, :presence => true

  def Task.complete
    return self.where("complete" => "complete")
  end

  def Task.incomplete
    return self.where("complete" => "incomplete")
  end

  def Task.due_dates
    due_dates = []
    Task.all.each do |task|
      t = task.due_date
      due_dates << t
    end
    return due_dates.uniq
  end

end
