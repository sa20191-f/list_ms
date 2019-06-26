class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :user_id, :email
  has_many :song_vinculations
  has_many :list_vinculations
end
