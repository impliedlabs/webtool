require 'test_helper'

class AddBucketsToOrgsControllerTest < ActionController::TestCase
  setup do
    @add_buckets_to_org = add_buckets_to_orgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_buckets_to_orgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_buckets_to_org" do
    assert_difference('AddBucketsToOrg.count') do
      post :create, :add_buckets_to_org => @add_buckets_to_org.attributes
    end

    assert_redirected_to add_buckets_to_org_path(assigns(:add_buckets_to_org))
  end

  test "should show add_buckets_to_org" do
    get :show, :id => @add_buckets_to_org.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @add_buckets_to_org.to_param
    assert_response :success
  end

  test "should update add_buckets_to_org" do
    put :update, :id => @add_buckets_to_org.to_param, :add_buckets_to_org => @add_buckets_to_org.attributes
    assert_redirected_to add_buckets_to_org_path(assigns(:add_buckets_to_org))
  end

  test "should destroy add_buckets_to_org" do
    assert_difference('AddBucketsToOrg.count', -1) do
      delete :destroy, :id => @add_buckets_to_org.to_param
    end

    assert_redirected_to add_buckets_to_orgs_path
  end
end
