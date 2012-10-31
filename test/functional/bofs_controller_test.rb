require 'test_helper'

class BofsControllerTest < ActionController::TestCase
  setup do
    @bof = bofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bof" do
    assert_difference('Bof.count') do
      post :create, bof: { description: @bof.description, name: @bof.name, title: @bof.title, type: @bof.type }
    end

    assert_redirected_to bof_path(assigns(:bof))
  end

  test "should show bof" do
    get :show, id: @bof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bof
    assert_response :success
  end

  test "should update bof" do
    put :update, id: @bof, bof: { description: @bof.description, name: @bof.name, title: @bof.title, type: @bof.type }
    assert_redirected_to bof_path(assigns(:bof))
  end

  test "should destroy bof" do
    assert_difference('Bof.count', -1) do
      delete :destroy, id: @bof
    end

    assert_redirected_to bofs_path
  end
end
