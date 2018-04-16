require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get IMPORTS" do
    get static_pages_IMPORTS_url
    assert_response :success
  end

  test "should get SESSIONS" do
    get static_pages_SESSIONS_url
    assert_response :success
  end

  test "should get CSAS" do
    get static_pages_CSAS_url
    assert_response :success
  end

  test "should get STAFF" do
    get static_pages_STAFF_url
    assert_response :success
  end

  test "should get IMPORT_ERRORS" do
    get static_pages_IMPORT_ERRORS_url
    assert_response :success
  end

end
