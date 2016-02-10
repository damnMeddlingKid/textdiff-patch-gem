require_relative '../lib/text_diff_patch'
require "minitest/autorun"

class TestMeme < Minitest::Test
  def setup
    @original = 'The sleepy brown fox'
    @delta = [[0, 4],[-1, 6],[1, 'quick'],[0,10],[1, ' jumps over the lazy dog']]
  end

  def test_patch
    assert_equal  TextDiffPatch.patch(@original, @delta), "The quick brown fox jumps over the lazy dog"
  end
end
