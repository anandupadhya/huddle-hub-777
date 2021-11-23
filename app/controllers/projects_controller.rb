class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    # @categories = Category.all
    if params[:category]
      p category = params[:category].to_i
      p @projects = @projects.select { |project| project.category_id == category }
    end
  end

  def show
    @project = Project.find(params[:id])
    # @bookmark = Bookmark.new
    # @bookmark.list = @list
    # @movies = Movie.all
  end

  def new
    @project = Project.new
    @categories = Category.all
  end

  def create
    # @projects = Project.all
    @project = Project.new(project_params)
    # @project.category = Category.all.sample
    @project.user  = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      # redirect_to lists_path
      puts "############### ERROR #{@project.errors.full_messages}"
      render 'new'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private
    def project_params
      params.require(:project).permit(:name, :description, :details, :status, :user, :category_id)
    end
end
