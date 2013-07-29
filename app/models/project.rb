class Project < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title , :description
  has_many :assignments
  has_many :students, :through => :assignments
end
