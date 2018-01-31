class Classroom < ActiveRecord::Base
  has_many :assignments
  has_many :teachers, through: :classteachers
end
