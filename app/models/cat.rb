class Cat < ActiveRecord::Base
  belongs_to :owner
  validates :name, :owner_id, presence: true
end
