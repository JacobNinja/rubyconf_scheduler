require 'test_helper'

class LightningTalksControllerTest < ActionController::TestCase
  setup do
    @lightning_talk = lightning_talks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lightning_talks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lightning_talk" do
    assert_difference('LightningTalk.count') do
      post :create, lightning_talk: { description: @lightning_talk.description, name: @lightning_talk.name, title: @lightning_talk.title, type: @lightning_talk.type }
    end

    assert_redirected_to lightning_talk_path(assigns(:lightning_talk))
  end

  test "should show lightning_talk" do
    get :show, id: @lightning_talk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lightning_talk
    assert_response :success
  end

  test "should update lightning_talk" do
    put :update, id: @lightning_talk, lightning_talk: { description: @lightning_talk.description, name: @lightning_talk.name, title: @lightning_talk.title, type: @lightning_talk.type }
    assert_redirected_to lightning_talk_path(assigns(:lightning_talk))
  end

  test "should destroy lightning_talk" do
    assert_difference('LightningTalk.count', -1) do
      delete :destroy, id: @lightning_talk
    end

    assert_redirected_to lightning_talks_path
  end
end
