require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper blank" do
    assert_equal full_title, "Ruby on Rails Tutorial Sample App"
  end

  test "full title helper help" do
    assert_equal full_title("Help"), "Help | Ruby on Rails Tutorial Sample App"
  end

end
