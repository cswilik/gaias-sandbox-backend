class WeatherSerializer < ActiveModel::Serializer
  attributes :id, :description, :temp, :wind, :rain, :cloud, :region_id
  has_one :user
  has_one :region
end
