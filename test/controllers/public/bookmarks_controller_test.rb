require "test_helper"

class Public::BookmarksControllerTest < ActionDispatch::IntegrationTest
  test "should get user_index" do
    get public_bookmarks_user_index_url
    assert_response :success
  end
end
