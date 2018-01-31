class Teacher < ActiveRecord::Base
  has_many :assignments
  has_many :classrooms, through: :classteachers
end
