class Event < ApplicationRecord
    has_one :restaurant
    has_many :rsvps
    has_many :users, through: :rsvps
end
