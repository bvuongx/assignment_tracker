class Student < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :first_name, :last_name
  has_many :assignments, :dependent => :delete_all
  has_many :projects, :through => :assignments
end
