require 'test_helper'

class AddClientIdToUsersControllerTest < ActionController::TestCase
  setup do
    @add_client_id_to_user = add_client_id_to_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_client_id_to_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_client_id_to_user" do
    assert_difference('AddClientIdToUser.count') do
      post :create, :add_client_id_to_user => @add_client_id_to_user.attributes
    end

    assert_redirected_to add_client_id_to_user_path(assigns(:add_client_id_to_user))
  end

  test "should show add_client_id_to_user" do
    get :show, :id => @add_client_id_to_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @add_client_id_to_user.to_param
    assert_response :success
  end

  test "should update add_client_id_to_user" do
    put :update, :id => @add_client_id_to_user.to_param, :add_client_id_to_user => @add_client_id_to_user.attributes
    assert_redirected_to add_client_id_to_user_path(assigns(:add_client_id_to_user))
  end

  test "should destroy add_client_id_to_user" do
    assert_difference('AddClientIdToUser.count', -1) do
      delete :destroy, :id => @add_client_id_to_user.to_param
    end

    assert_redirected_to add_client_id_to_users_path
  end
end
