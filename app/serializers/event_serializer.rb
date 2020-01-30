class EventSerializer < ActiveModel::Serializer
    attributes :id, :date, :time, :location_name, :rsvps
    # belongs_to :user
    # belongs_to :rsvp
    has_many :rsvps, serializer: RsvpSerializer

#         def rsvps
#         self.object.rsvps.map do |rsvp_obj|
#             {
#                 rsvp_id: rsvp_obj.id,
#                 user: rsvp_obj.user_id,
#                 event_id: rsvp_obj.event_id

#             }
#     end
# end
  end