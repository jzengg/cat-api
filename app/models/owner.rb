class Owner < ActiveRecord::Base
  has_many :cats
  validates :fname, presence: true
  validates :lname, presence: true
  def name
    "#{fname} #{lname}"
  end
end
