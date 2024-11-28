require "test_helper"

class LendingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lendings_index_url
    assert_response :success
  end

  test "should get show" do
    get lendings_show_url
    assert_response :success
  end

  test "should get new" do
    get lendings_new_url
    assert_response :success
  end

  test "should get create" do
    get lendings_create_url
    assert_response :success
  end

  test "should get edit" do
    get lendings_edit_url
    assert_response :success
  end

  test "should get update" do
    get lendings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lendings_destroy_url
    assert_response :success
  end
end
