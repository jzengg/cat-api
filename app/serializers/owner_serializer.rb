class OwnerSerializer < ActiveModel::Serializer
  attributes :name, :id, :cats
  has_many :cats, serializer: BasicCatSerializer


end
