class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_id

  belongs_to :artist
end
