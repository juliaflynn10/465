require 'test_helper'

class CourseUsersControllerTest < ActionController::TestCase
  setup do
    @course_user = course_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_user" do
    assert_difference('CourseUser.count') do
      post :create, course_user: { course_id: @course_user.course_id, course_id: @course_user.course_id, seating_chart_id: @course_user.seating_chart_id, user_id: @course_user.user_id }
    end

    assert_redirected_to course_user_path(assigns(:course_user))
  end

  test "should show course_user" do
    get :show, id: @course_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_user
    assert_response :success
  end

  test "should update course_user" do
    patch :update, id: @course_user, course_user: { course_id: @course_user.course_id, course_id: @course_user.course_id, seating_chart_id: @course_user.seating_chart_id, user_id: @course_user.user_id }
    assert_redirected_to course_user_path(assigns(:course_user))
  end

  test "should destroy course_user" do
    assert_difference('CourseUser.count', -1) do
      delete :destroy, id: @course_user
    end

    assert_redirected_to course_users_path
  end
end
