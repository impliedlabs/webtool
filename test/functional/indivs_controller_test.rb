require 'test_helper'

class IndivsControllerTest < ActionController::TestCase
  setup do
    @indiv = indivs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indivs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indiv" do
    assert_difference('Indiv.count') do
      post :create, :indiv => @indiv.attributes
    end

    assert_redirected_to indiv_path(assigns(:indiv))
  end

  test "should show indiv" do
    get :show, :id => @indiv.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @indiv.to_param
    assert_response :success
  end

  test "should update indiv" do
    put :update, :id => @indiv.to_param, :indiv => @indiv.attributes
    assert_redirected_to indiv_path(assigns(:indiv))
  end

  test "should destroy indiv" do
    assert_difference('Indiv.count', -1) do
      delete :destroy, :id => @indiv.to_param
    end

    assert_redirected_to indivs_path
  end
end
