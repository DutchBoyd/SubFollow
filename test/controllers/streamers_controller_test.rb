require 'test_helper'

class StreamersControllerTest < ActionController::TestCase
  setup do
    @streamer = streamers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:streamers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create streamer" do
    assert_difference('Streamer.count') do
      post :create, streamer: { followers: @streamer.followers, name: @streamer.name, subscribers: @streamer.subscribers }
    end

    assert_redirected_to streamer_path(assigns(:streamer))
  end

  test "should show streamer" do
    get :show, id: @streamer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @streamer
    assert_response :success
  end

  test "should update streamer" do
    patch :update, id: @streamer, streamer: { followers: @streamer.followers, name: @streamer.name, subscribers: @streamer.subscribers }
    assert_redirected_to streamer_path(assigns(:streamer))
  end

  test "should destroy streamer" do
    assert_difference('Streamer.count', -1) do
      delete :destroy, id: @streamer
    end

    assert_redirected_to streamers_path
  end
end
