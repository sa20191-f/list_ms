class SongVinculationSerializer < ActiveModel::Serializer
  attributes :id, :song_id

  has_one :list
end
