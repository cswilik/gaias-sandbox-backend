class WeatherSerializer < ActiveModel::Serializer
  attributes :id, :description, :temp, :wind, :rain, :cloud
  has_one :user
  has_one :region
end
