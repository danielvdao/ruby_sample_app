require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup path" do
    get signup_path
    assert_select "form[action=?]", signup_path
    assert_no_difference 'User.count' do
      post signup_path, params: { user: { name: "",
                                         email: "user@invalid",
                                         password: "foo",
                                         password_confirmation: "bar" } }
    end

    assert_template "users/new"
    assert_select "div#error_explanation" # test that the error explanation div class is there
    assert_select "div.alert.alert-danger" # test that alert is there
  end

end
