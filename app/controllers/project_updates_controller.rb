class ProjectUpdatesController < ApplicationController
  before_action :set_project_update, only: %i[show destroy edit update]

  def new
    @project_update = ProjectUpdate.new
    authorize @project_update
  end

  def create
    @project_update = ProjectUpdate.new(project_update_params)
    @project_update.project_id = params[:project_id]
    @project_update.user_id = current_user.id
    authorize @project_update
    redirect_to project_path(@project_update.project_id) if @project_update.save
  end

  def destroy
    @project_update.destroy
  end

  def edit

  end

  private

  def project_update_params
    params.require(:project_update).permit(:project_id, :user_id, :details)
  end

  def set_project_update
    @project_update = ProjectUpdate.find(params[:id])
    authorize @project_update
  end
end
