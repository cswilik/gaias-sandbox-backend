class Region < ApplicationRecord
    has_many :weathers
    has_many :states
    has_many :users, through: :weathers
end
