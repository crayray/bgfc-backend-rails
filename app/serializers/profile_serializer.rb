class ProfileSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
    attributes :id, :name, :interest1, :instagram, :facebook, :twitter, :linkedin, :user_id
    belongs_to :user

    #Other way of serializing photo data:
    # def avatar_url
    #   variant = object.avatar.variant(resize: "100x100")
    #   return rails_representation_url(variant, only_path: true)
    # end

    #attributes  :avatar_url
    
    # has_many :user_teams, serializer: UserTeamSerializer
  end