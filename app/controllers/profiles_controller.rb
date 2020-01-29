class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]

  # GET /profiles
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  # from this: https://medium.com/@jennyjean8675309/connect-your-react-application-to-a-rails-api-using-active-storage-part-1-e59dcacc481b
  def show
    profile= Profile.find_by(name: params[:name])
    avatar= rails_blob_path(profile.avatar)
    render json: {user: user, avatar: avatar}
  end

  # POST /profiles
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  def update
    if @profile.update(profile_params)
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

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
