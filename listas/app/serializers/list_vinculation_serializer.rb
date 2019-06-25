class ListVinculationSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  has_one :list
end
