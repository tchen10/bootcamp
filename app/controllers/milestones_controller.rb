class MilestonesController < ApplicationController
  respond_to :html, :json
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
    @milestone = Milestone.new(params[:milestone])

    if @milestone.save
      redirect_to :back, :notice => "Milestone created!"
        else
      render 'new', :notice => "Nice try."
    end
  end

  def edit
    @milestone = Milestone.find_by_id(params[:id])
  end

  def update
    @milestone = Milestone.find_by_id(params[:id])

    @milestone.update_attributes(params[:milestone])
    respond_with @milestone
  end

  def destroy
    @milestone = Milestone.find_by_id(params[:id])
    @milestone.destroy
        redirect_to :back, :notice => "Milestone deleted!"
  end
end
