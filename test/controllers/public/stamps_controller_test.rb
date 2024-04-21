require "test_helper"

class Public::StampsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_stamps_new_url
    assert_response :success
  end
end
