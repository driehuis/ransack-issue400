require "test_helper"

class HostTest < ActiveSupport::TestCase

  def host
    @host ||= Host.new
  end

  def test_valid
    assert host.valid?
  end

end
