class Owner < ActiveRecord::Base
  has_many :cats
  validates :fname, :lname, presence: true
  
  def name
    "#{fname} #{lname}"
  end
end
