class CollaborationsController < ApplicationController

  def create
    @collaboration = Collaboration.new
    @collaboration.user_id = current_user.id
    @collaboration.status = 'pending'
    @collaboration.user = current_user
    @collaboration.project_id = params[:project_id]
    authorize @collaboration
    redirect_to project_path(@collaboration.project_id) if @collaboration.save
  end

  def update
    @collaboration = Collaboration.find(params[:collaboration_id])
    authorize @collaboration
    redirect_to project_path(@collaboration.project_id) if @collaboration.update(collaboration_params)
  end

  private

  def collaboration_params
    params.require(:collaboration).permit(:project_id, :user_id, :status)
  end
end
