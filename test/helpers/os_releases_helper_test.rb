require "test_helper"

class OsReleasesHelperTest < ActionView::TestCase

  def test_sanity
    osr = OsRelease.first
    assert_equal osr.id.to_s, "1"
  end

end
