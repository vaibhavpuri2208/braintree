require 'test_helper'

class TweetboxesControllerTest < ActionController::TestCase
  setup do
    @tweetbox = tweetboxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweetboxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tweetbox" do
    assert_difference('Tweetbox.count') do
      post :create, tweetbox: {  }
    end

    assert_redirected_to tweetbox_path(assigns(:tweetbox))
  end

  test "should show tweetbox" do
    get :show, id: @tweetbox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweetbox
    assert_response :success
  end

  test "should update tweetbox" do
    put :update, id: @tweetbox, tweetbox: {  }
    assert_redirected_to tweetbox_path(assigns(:tweetbox))
  end

  test "should destroy tweetbox" do
    assert_difference('Tweetbox.count', -1) do
      delete :destroy, id: @tweetbox
    end

    assert_redirected_to tweetboxes_path
  end
end
