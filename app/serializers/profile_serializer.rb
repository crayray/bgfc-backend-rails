class ProfileSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
    attributes :id, :name, :interest1, :instagram, :facebook, :twitter, :linkedin, :user_id, :avatar
    belongs_to :user

  
    def avatar
      rails_blob_path(object.avatar, only_path: true) if object.avatar.attached?
    end

  

  end