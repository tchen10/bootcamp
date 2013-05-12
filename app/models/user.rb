class User < ActiveRecord::Base
  has_secure_password
  has_many :assignments
  has_many :projects, :through => :assignments
  has_many :tasks

  validates :email, uniqueness: true
  validates :email, :name, :password, :presence => true

  def next_task
    days = self.tasks.order('due_date').all.first.due_date - Date.today
    return days.to_i
  end

end
