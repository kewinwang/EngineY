require 'test_helper'

class FollowsControllerTest < ActionController::TestCase
  
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:follows)
  end


  test "should get new" do
    get :new
    assert_response :success
  end


  test "should create follow" do
    assert_difference('Follow.count') do
      post :create, :follow => { }
    end
    assert_redirected_to follow_path(assigns(:follow))
  end


  test "should show follow" do
    get :show, :id => follows(:one).to_param
    assert_response :success
  end


  test "should get edit" do
    get :edit, :id => follows(:one).to_param
    assert_response :success
  end


  test "should update follow" do
    put :update, :id => follows(:one).to_param, :follow => { }
    assert_redirected_to follow_path(assigns(:follow))
  end


  test "should destroy follow" do
    assert_difference('Follow.count', -1) do
      delete :destroy, :id => follows(:one).to_param
    end
    assert_redirected_to follows_path
  end
end
