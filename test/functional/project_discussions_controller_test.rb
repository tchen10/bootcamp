require 'test_helper'

class ProjectDiscussionsControllerTest < ActionController::TestCase
  setup do
    @project_discussion = project_discussions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_discussions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_discussion" do
    assert_difference('ProjectDiscussion.count') do
      post :create, project_discussion: { post: @project_discussion.post, project_id: @project_discussion.project_id, user_id: @project_discussion.user_id }
    end

    assert_redirected_to project_discussion_path(assigns(:project_discussion))
  end

  test "should show project_discussion" do
    get :show, id: @project_discussion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_discussion
    assert_response :success
  end

  test "should update project_discussion" do
    put :update, id: @project_discussion, project_discussion: { post: @project_discussion.post, project_id: @project_discussion.project_id, user_id: @project_discussion.user_id }
    assert_redirected_to project_discussion_path(assigns(:project_discussion))
  end

  test "should destroy project_discussion" do
    assert_difference('ProjectDiscussion.count', -1) do
      delete :destroy, id: @project_discussion
    end

    assert_redirected_to project_discussions_path
  end
end
