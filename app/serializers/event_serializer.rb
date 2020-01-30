class RsvpSerializer < ActiveModel::Serializer
    attributes :id, :date, :time, :location_name
    belongs_to :user
    # belongs_to :rsvp
    has_many :rsvps, serializer: RsvpSerializer
  end