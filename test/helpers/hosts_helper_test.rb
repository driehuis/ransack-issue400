require "test_helper"

class HostsHelperTest < ActionView::TestCase

  def test_sanity
    host = Host.first
    assert_equal host.id.to_s, "1"
  end

end
