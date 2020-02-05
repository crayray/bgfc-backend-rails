class ProfileSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
    attributes :id, :name, :interest1, :instagram, :facebook, :twitter, :linkedin, :user_id, :avatar_url
    belongs_to :user
    def avatar_url
      variant = object.avatar.variant(resize: "100x100")
      return rails_representation_url(variant, only_path: true)
    end
    
    # has_many :user_teams, serializer: UserTeamSerializer
  end