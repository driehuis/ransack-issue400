require "test_helper"

class OsReleasesControllerTest < ActionController::TestCase

  def os_release
    @os_release ||= os_releases :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:os_releases)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('OsRelease.count') do
      post :create, os_release: {  }
    end

    assert_redirected_to os_release_path(assigns(:os_release))
  end

  def test_show
    get :show, id: os_release
    assert_response :success
  end

  def test_edit
    get :edit, id: os_release
    assert_response :success
  end

  def test_update
    put :update, id: os_release, os_release: {  }
    assert_redirected_to os_release_path(assigns(:os_release))
  end

  def test_destroy
    assert_difference('OsRelease.count', -1) do
      delete :destroy, id: os_release
    end

    assert_redirected_to os_releases_path
  end
end
