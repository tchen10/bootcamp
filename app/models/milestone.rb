class Milestone < ActiveRecord::Base
  belongs_to :project
  has_many :tasks

  validates :title, :due_date, :date_created, :presence => true

  def Milestone.titles_array
    titles = []
    self.all.each do |m|
      titles << m.title
    end
    return titles
  end
end
