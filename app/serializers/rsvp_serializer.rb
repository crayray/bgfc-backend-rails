class RsvpSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :event_id
    belongs_to :user
    belongs_to :event
    # has_many :user_teams, serializer: UserTeamSerializer
  end