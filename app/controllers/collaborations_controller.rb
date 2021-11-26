class CollaborationsController < ApplicationController

  def create
    # @projects = Project.all
    @collaboration = Collaboration.new(collaboration_params)
    @collaboration.user_id = current_user.id
    @collaboration.status = 'pending'
    @collaboration.user = current_user
    authorize @collaboration
    redirect_to project_path(@collaboration.project_id) if @collaboration.save
  end

  def update
    puts params
    @collaboration = Collaboration.find(params[:id])
    authorize @collaboration
    @collaboration.update(collaboration_params)
    # redirect_to project_path(@collaboration.project_id)
  end

  private

  def collaboration_params
    params.require(:collaboration).permit(:project_id, :user_id, :status)
  end
end
