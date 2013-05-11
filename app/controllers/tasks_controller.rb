class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by_id(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new
    @task.milestone_id = params[:milestone_id]
    @task.description = params[:description]
    @task.date_created = params[:date_created].map{|k,v| v}.join("-").to_date
    @task.due_date = params[:due_date].map{|k,v| v}.join("-").to_date
    @task.user_id = params[:user_id]
    @task.status = params[:status]

    if @task.save
            redirect_to tasks_url
          else
      render 'new'
    end
  end

  def edit
    @task = Task.find_by_id(params[:id])
  end

  def update
    @task = Task.find_by_id(params[:id])
    @task.milestone_id = params[:milestone_id]
    @task.description = params[:description]
    @task.date_created = params[:date_created].map{|k,v| v}.join("-").to_date
    @task.due_date = params[:due_date].map{|k,v| v}.join("-").to_date
    @task.user_id = params[:user_id]
    @task.status = params[:status]

    if @task.save
            redirect_to tasks_url
          else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find_by_id(params[:id])
    @task.destroy
        redirect_to tasks_url
      end
end
