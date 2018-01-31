class Assignment < ActiveRecord::Base
  has_one :teacher
  has_one :classroom
end
