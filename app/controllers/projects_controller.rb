class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find_by_id(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.title = params[:title]
    @project.description = params[:description]
    @project.date_created = params[:date_created].map{|k,v| v}.join("-").to_date
    @project.due_date = params[:due_date].map{|k,v| v}.join("-").to_date

    if @project.save
            redirect_to projects_url
          else
      render 'new'
    end
  end

  def edit
    @project = Project.find_by_id(params[:id])
  end

  def update
    @project = Project.find_by_id(params[:id])
    @project.title = params[:title]
    @project.description = params[:description]
    @project.date_created = params[:date_created]
    @project.date_completed = params[:date_completed]
    @project.due_date = params[:due_date]
    @project.status = params[:status]

    if @project.save
            redirect_to projects_url
          else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find_by_id(params[:id])
    @project.destroy
        redirect_to projects_url
      end
end
