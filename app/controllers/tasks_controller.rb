class TasksController < ApplicationController
  respond_to :html, :json
  def index
    @tasks = Task.order('due_date').all
  end

  def show
    @task = Task.find_by_id(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])

    if @task.save
      redirect_to :back, :notice => "New task created!"
        else
      render 'new', :notice => "Nice try."
    end
  end

  def edit
    @task = Task.find_by_id(params[:id])
  end

  def update
    @task = Task.find_by_id(params[:id])
    @task.date_completed = Date.today

    @task.update_attributes(params[:task])
    respond_with @task
  end

  def destroy
    @task = Task.find_by_id(params[:id])
    @task.destroy
        redirect_to :back, :notice => "Task deleted!"
      end
end
