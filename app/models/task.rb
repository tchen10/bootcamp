class Task < ActiveRecord::Base
  belongs_to :milestone
  belongs_to :user

  def Task.complete
    return self.where("complete" => "complete")
  end

  def Task.incomplete
    return self.where("complete" => "incomplete")
  end
end
