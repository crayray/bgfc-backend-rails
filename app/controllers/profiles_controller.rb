class ProfilesController < ApplicationController
  # From me: testing with authorization on Profiles resource
  # before_action :authorized

  # Original:
  # before_action :set_profile, only: [:show, :update, :destroy]


  # GET /profiles
  def index
   @profiles =  Profile.all
 
  
   mapped=  @profiles.map do |profile|

    
      {
        profile_id: profile.id,
        name: profile.name,
        user_id: profile.user_id,
        interest1: profile.interest1,
        instagram: profile.instagram,
        facebook: profile.facebook,
        twitter: profile.twitter,
        linkedin: profile.linkedin,
        about: profile.about
    

      }
      # byebug
    end
    
    render json: mapped
  end




  # GET /profiles/1
  # from this: https://medium.com/@jennyjean8675309/connect-your-react-application-to-a-rails-api-using-active-storage-part-1-e59dcacc481b
  def show
    profile= Profile.find_by(id: params[:id])
    avatar= rails_blob_path(profile.avatar)
    render json: {profile: profile, avatar: avatar}
  end

  # POST /profiles (original)
  # def create
  #   @profile = Profile.new(profile_params)

  #   if @profile.save
  #     render json: @profile, status: :created, location: @profile
  #   else
  #     render json: @profile.errors, status: :unprocessable_entity
  #   end
  # end


  def create
    @profile = Profile.new(profile_params)

    if @profile.valid?
      @profile.save
        render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end


def update
  profile= Profile.find(params[:id])
  profile.update(avatar: params[:avatar])
  avatar_url = rails_blob_path(profile.avatar)
  render json: {profile: profile, avatar_url: avatar_url}
end

  # PATCH/PUT /profiles/1 original:
  # def update
  #   if @profile.update(profile_params)
  #     render json: @profile
  #   else
  #     render json: @profile.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /profiles/1
  def destroy
    @profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def profile_params
      params.require(:profile).permit(:name, :about, :interest1, :instagram, :facebook, :twitter, :linkedin, :user_id)
    end
end
