class StatusesController < ApplicationController

  def index
    @statuses = Status.all
  end

  def show
    @status = status.find_by_id(params[:id])
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new
    @status.project_id = params[:project_id]
    @status.date = params[:date].map{|k,v| v}.join("-").to_date
    @status.description = params[:description]

    if @status.save
      redirect_to project_url(params[:project_id])
    else
      render 'new'
    end
  end

  def edit
    @status = status.find_by_id(params[:id])
  end

  def update
    @status = status.find_by_id(params[:id])
    @status.project_id = params[:project_id]
    @status.date = params[:date].map{|k,v| v}.join("-").to_date
    @status.description = params[:description]


    if @status.save
            redirect_to statuses_url
          else
      render 'edit'
    end
  end

  def destroy
    @status = status.find_by_id(params[:id])
    @status.destroy
        redirect_to statuses_url
      end
end
