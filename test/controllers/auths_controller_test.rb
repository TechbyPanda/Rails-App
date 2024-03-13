require "test_helper"

class AuthsControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get auths_register_url
    assert_response :success
  end

  test "should get login" do
    get auths_login_url
    assert_response :success
  end
end
