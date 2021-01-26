class RegionSerializer < ActiveModel::Serializer
  attributes :id, :name, :latMin, :latMax, :longMin, :longMax, :centerLat, :centerLong, :weathers
end
