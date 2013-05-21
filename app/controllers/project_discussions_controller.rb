class ProjectDiscussionsController < ApplicationController
  # GET /project_discussions
  # GET /project_discussions.json
  def index
    @project_discussions = ProjectDiscussion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_discussions }
    end
  end

  # GET /project_discussions/1
  # GET /project_discussions/1.json
  def show
    @project_discussion = ProjectDiscussion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_discussion }
    end
  end

  # GET /project_discussions/new
  # GET /project_discussions/new.json
  def new
    @project_discussion = ProjectDiscussion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_discussion }
    end
  end

  # GET /project_discussions/1/edit
  def edit
    @project_discussion = ProjectDiscussion.find(params[:id])
  end

  # POST /project_discussions
  # POST /project_discussions.json
  def create
    @project_discussion = ProjectDiscussion.new(params[:project_discussion])

    respond_to do |format|
      if @project_discussion.save
        format.html { redirect_to @project_discussion, notice: 'Project discussion was successfully created.' }
        format.json { render json: @project_discussion, status: :created, location: @project_discussion }
      else
        format.html { render action: "new" }
        format.json { render json: @project_discussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_discussions/1
  # PUT /project_discussions/1.json
  def update
    @project_discussion = ProjectDiscussion.find(params[:id])

    respond_to do |format|
      if @project_discussion.update_attributes(params[:project_discussion])
        format.html { redirect_to @project_discussion, notice: 'Project discussion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_discussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_discussions/1
  # DELETE /project_discussions/1.json
  def destroy
    @project_discussion = ProjectDiscussion.find(params[:id])
    @project_discussion.destroy

    respond_to do |format|
      format.html { redirect_to project_discussions_url }
      format.json { head :no_content }
    end
  end
end
