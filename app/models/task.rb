class Task < ActiveRecord::Base
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
end
