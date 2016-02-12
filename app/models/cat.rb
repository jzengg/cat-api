class Cat < ActiveRecord::Base
  belongs_to :owner
  validates :name, presence: true
  validates :owner_id, presence: true
end
