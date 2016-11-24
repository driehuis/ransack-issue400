require 'test_helper'

class OsReleasesControllerTest < ActionController::TestCase
  setup do
    @os_release = os_releases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:os_releases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create os_release" do
    assert_difference('OsRelease.count') do
      post :create, os_release: {  }
    end

    assert_redirected_to os_release_path(assigns(:os_release))
  end

  test "should show os_release" do
    get :show, id: @os_release
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @os_release
    assert_response :success
  end

  test "should update os_release" do
    put :update, id: @os_release, os_release: {  }
    assert_redirected_to os_release_path(assigns(:os_release))
  end

  test "should destroy os_release" do
    assert_difference('OsRelease.count', -1) do
      delete :destroy, id: @os_release
    end

    assert_redirected_to os_releases_path
  end
end
