require "test_helper"

class SigninControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get signin_create_url
    assert_response :success
  end
end
