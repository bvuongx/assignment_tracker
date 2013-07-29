class Assignment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :student_id, :project_id, :grade
  belongs_to :project
  belongs_to :student
end
