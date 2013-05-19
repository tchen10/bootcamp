class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :name, :image_url, :home, :birthday, :bio
  has_secure_password
  has_many :assignments
  has_many :projects, :through => :assignments
  has_many :tasks

  validates :email, uniqueness: true
  validates :email, :password, :name, :presence => true

  def next_task
    days = self.tasks.order('due_date').all.first.due_date - Date.today
    return days.to_i
  end

  def User.names_array
    names = []
    self.all.each do |user|
      names << user.name
    end
    return names
  end
end
