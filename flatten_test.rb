require "minitest/autorun"
require "./flatten.rb"

class TestFlatten < Minitest::Test
  def setup
    @flatten = Flatten.new
  end

  def test_flatten_works
    assert_equal [1, 2, 3, 4], @flatten.flatten_array([[1,2,[3]],4])
  end

  def test_flatten_works_with_more_parens
    assert_equal [1, 2, 3, 4], @flatten.flatten_array([[[1],[[2],[3]],[4]]])
  end

  def test_flatten_works_with_more_nums
    assert_equal [1, 2, 3, 4, 5, 6], @flatten.flatten_array([[1,2,[3]],4, [5, 6]])
  end
end
