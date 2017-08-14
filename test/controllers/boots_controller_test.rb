require 'test_helper'

class BootsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boots_index_url
    assert_response :success
  end

  test "should get show" do
    get boots_show_url
    assert_response :success
  end

  test "should get create" do
    get boots_create_url
    assert_response :success
  end

  test "should get destory" do
    get boots_destory_url
    assert_response :success
  end

end
