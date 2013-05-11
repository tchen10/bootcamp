class Task < ActiveRecord::Base
  belongs_to :milestone
  belongs_to :user
end
