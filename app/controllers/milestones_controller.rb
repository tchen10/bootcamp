class MilestonesController < ApplicationController

  def index
    @milestones = Milestone.order('due_date').all
  end

  def show
    @milestone = Milestone.find_by_id(params[:id])
  end

  def new
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.new
    @milestone.project_id = params[:project_id]
    @milestone.title = params[:title]
    @milestone.description = params[:description]
    @milestone.date_created = params[:date_created].map{|k,v| v}.join("-").to_date
    @milestone.due_date = params[:due_date].map{|k,v| v}.join("-").to_date

    if @milestone.save
            redirect_to :back
          else
      render 'new'
    end
  end

  def edit
    @milestone = Milestone.find_by_id(params[:id])
  end

  def update
    @milestone = Milestone.find_by_id(params[:id])
    @milestone.project_id = params[:project_id]
    @milestone.title = params[:title]
    @milestone.description = params[:description]
    @milestone.date_created = params[:date_created].map{|k,v| v}.join("-").to_date
    @milestone.due_date = params[:due_date].map{|k,v| v}.join("-").to_date

    if @milestone.save
            redirect_to :back
          else
      render 'edit'
    end
  end

  def destroy
    @milestone = Milestone.find_by_id(params[:id])
    @milestone.destroy
        redirect_to milestones_url
      end
end
