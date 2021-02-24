class Region < ApplicationRecord
    has_many :weathers, dependent: :destroy
    has_many :states, dependent: :destroy 
    has_many :users, through: :weathers
end
