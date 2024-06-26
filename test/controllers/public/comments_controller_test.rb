require "test_helper"

class Public::CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_comments_new_url
    assert_response :success
  end

  test "should get index" do
    get public_comments_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_comments_edit_url
    assert_response :success
  end

  test "should get user_index" do
    get public_comments_user_index_url
    assert_response :success
  end
end
