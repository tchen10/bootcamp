class ProjectsController < ApplicationController
  respond_to :html, :json

  def index
    @projects = Project.order('due_date').all
  end

  def show
    @project = Project.find_by_id(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])

    if @project.save
      redirect_to project_url(@project.id), :notice => "Project created!"
    else
      render 'new', :notice => "Nice try."
    end
  end

  def edit
    @project = Project.find_by_id(params[:id])
  end

  def update
    @project = Project.find_by_id(params[:id])

    @project.update_attributes(params[:project])
    respond_with @project
  end

  def destroy
    @project = Project.find_by_id(params[:id])
    @project.destroy
        redirect_to projects_url
  end

  def discussion
    @project = Project.find_by_id(params[:id])
  end
end
