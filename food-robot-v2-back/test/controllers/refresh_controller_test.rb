require "test_helper"

class RefreshControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get refresh_create_url
    assert_response :success
  end
end
