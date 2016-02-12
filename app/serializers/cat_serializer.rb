class CatSerializer < ActiveModel::Serializer
  attributes :name, :id, :owner
  has_one :owner, serializer: BasicOwnerSerializer  


end
