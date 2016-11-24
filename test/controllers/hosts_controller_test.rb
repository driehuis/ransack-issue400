require "test_helper"

class HostsControllerTest < ActionController::TestCase

  def host
    @host ||= hosts :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:hosts)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Host.count') do
      post :create, host: {  }
    end

    assert_redirected_to host_path(assigns(:host))
  end

  def test_show
    get :show, id: host
    assert_response :success
  end

  def test_edit
    get :edit, id: host
    assert_response :success
  end

  def test_update
    put :update, id: host, host: {  }
    assert_redirected_to host_path(assigns(:host))
  end

  def test_destroy
    assert_difference('Host.count', -1) do
      delete :destroy, id: host
    end

    assert_redirected_to hosts_path
  end
end
