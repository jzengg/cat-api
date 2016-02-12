class Owner < ActiveRecord::Base
  has_many :cats
  def name
    "#{fname} #{lname}"
  end
end
