class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show destroy edit update] # Need to add edit and update

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    authorize @profile
  end

  def show

  end

  def destroy
    @profile.destroy
  end

  def edit

  end

  def update

  end

  private

  def profile_params
    params.require(:profile).permit(:name, :description, :details, :status, :user, :category_id)
  end

  def set_profile
    @profile = Profile.find(params[:id])
    authorize @profile
  end
end
