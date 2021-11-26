class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show destroy edit update] # Need to add edit and update

  def index
    @projects = policy_scope(Project).order(created_at: :desc)
    # @categories = Category.all
    if params[:category]
      p category = params[:category].to_i
      p @projects = @projects.select { |project| project.category_id == category }
    end

    if user_signed_in?
      @my_projects = @projects.select { |project| project.user.id == current_user.id }
      # @my_collaborations
      # @other_projects = @projects.select {}
    end
  end

  def show
    # @bookmark = Bookmark.new
    # @bookmark.list = @list
    # @movies = Movie.all

    collabs = @project.collaborations.where(status: 'accepted')
    @members = collabs.map do |collab|
      User.find(id = collab.user_id)
    end
    puts @members
    @profiles = @members.map do |member|
      member.profile
    end
    puts @profiles
    @markers = @profiles.map do |profile|
      {
        lat: profile.latitude,
        lng: profile.longitude
      }
    end
    puts @markers
    @collaboration = Collaboration.new
    @collaborations = @project.collaborations
  end

  def new
    @project = Project.new
    @categories = Category.all
    # @statuses = ['open', 'closed', 'completed']
    authorize @project
  end

  def create
    # @projects = Project.all
    @project = Project.new(project_params)
    @project.user = current_user
    @project.status = 'open'
    authorize @project

    if @project.save
      redirect_to project_path(@project)
    else
      # redirect_to lists_path
      puts "############### ERROR #{@project.errors.full_messages}"
      render 'new'
    end
  end

  def edit
    @categories = Category.all
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :details, :status, :user, :category_id)
  end

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end
end
