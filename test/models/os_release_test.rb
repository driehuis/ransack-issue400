require "test_helper"

class OsReleaseTest < ActiveSupport::TestCase

  def os_release
    @os_release ||= OsRelease.new
  end

  def test_valid
    assert os_release.valid?
  end

end
