require 'test_helper'

class PivotsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pivots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pivot" do
    assert_difference('Pivot.count') do
      post :create, :pivot => { }
    end

    assert_redirected_to pivot_path(assigns(:pivot))
  end

  test "should show pivot" do
    get :show, :id => pivots(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pivots(:one).to_param
    assert_response :success
  end

  test "should update pivot" do
    put :update, :id => pivots(:one).to_param, :pivot => { }
    assert_redirected_to pivot_path(assigns(:pivot))
  end

  test "should destroy pivot" do
    assert_difference('Pivot.count', -1) do
      delete :destroy, :id => pivots(:one).to_param
    end

    assert_redirected_to pivots_path
  end
end
