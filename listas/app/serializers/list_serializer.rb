class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :user_id
  has_many :song_vinculations
  has_many :list_vinculations
end
