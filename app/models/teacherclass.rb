class Classteacher < ActiveRecord::Base
  has_one :teacher
  has_one :classroom
end
