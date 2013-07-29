class Project < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title , :description
  has_many :assignments, :dependent => :delete_all
  has_many :students, :through => :assignments
end
