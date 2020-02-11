class RsvpSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :event_id, :location_name
    belongs_to :user
    belongs_to :event
  end