class AssignmentsController < ApplicationController

  def index
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find_by_id(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new
    @assignment.user_id = params[:user_id]
    @assignment.project_id = params[:project_id]

    if @assignment.save
            redirect_to project_url(params[:project_id])
          else
      render 'new'
    end
  end

  def edit
    @assignment = Assignment.find_by_id(params[:id])
  end

  def update
    @assignment = Assignment.find_by_id(params[:id])
    @assignment.user_id = params[:user_id]
    @assignment.project_id = params[:project_id]

    if @assignment.save
            redirect_to assignments_url
          else
      render 'edit'
    end
  end

  def destroy
    @assignment = Assignment.find_by_id(params[:id])
    @assignment.destroy
        redirect_to assignments_url
      end
end
