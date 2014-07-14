require 'test_helper'

class PhotocommentsControllerTest < ActionController::TestCase
  setup do
    @photocomment = photocomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photocomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photocomment" do
    assert_difference('Photocomment.count') do
      post :create, photocomment: { body: @photocomment.body, photo_id: @photocomment.photo_id, username: @photocomment.username }
    end

    assert_redirected_to photocomment_path(assigns(:photocomment))
  end

  test "should show photocomment" do
    get :show, id: @photocomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photocomment
    assert_response :success
  end

  test "should update photocomment" do
    put :update, id: @photocomment, photocomment: { body: @photocomment.body, photo_id: @photocomment.photo_id, username: @photocomment.username }
    assert_redirected_to photocomment_path(assigns(:photocomment))
  end

  test "should destroy photocomment" do
    assert_difference('Photocomment.count', -1) do
      delete :destroy, id: @photocomment
    end

    assert_redirected_to photocomments_path
  end
end
