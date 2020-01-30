class UserSerializer < ActiveModel::Serializer
    attributes :id, :username
    has_one :profile, serializer: ProfileSerializer
    has_many :rsvps
    # has_many :user_teams, serializer: UserTeamSerializer

#     def profiles
#         self.object.profile.map do |profile_obj|
#             {
#                 profile_id: profile_obj.id,
#                 name: profile_obj.name,
#                 user_id: profile_obj.user_id,
#                 interest1: profile_obj.interest1,
#                 instagram: profile_obj.instagram,
#                 facebook: profile_obj.facebook,
#                 twitter: profile_obj.twitter,
#                 linkedin: profile_obj.linkedin

#             }
#     end
# end

  end