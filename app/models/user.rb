class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :name, :image_url, :home, :birthday, :bio, :time_zone
  has_secure_password
  has_many :assignments
  has_many :projects, :through => :assignments
  has_many :tasks
  has_many :project_discussions

  validates :email, uniqueness: true
  validates :email, :password, :name, :presence => true

  def next_task
    days = self.tasks.order('due_date').all.first.due_date - Date.today
    return days.to_i
  end

  # def User.names_array
  #   names = []
  #   self.all.each do |user|
  #     names << user.name
  #   end
  #   return names
  # end

  def self.list_user_options
    User.select("id, name").map {|x| [x.id, x.name]}
  end
end
