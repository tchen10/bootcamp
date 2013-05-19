class ProjectsController < ApplicationController

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

    if @project.update_attributes(params[:project])
      redirect_to project_url(params[:id]), :notice => "Project updated!"
    else
      render 'edit', :notice => "Nice try."
    end
  end

  def destroy
    @project = Project.find_by_id(params[:id])
    @project.destroy
        redirect_to projects_url
      end
end
