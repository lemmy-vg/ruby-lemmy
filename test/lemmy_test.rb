require "test_helper"

class LemmyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Lemmy::VERSION
  end
end
