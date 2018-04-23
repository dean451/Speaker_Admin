require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Speaker Admin"
  end

  test "should get root" do
    get static_pages_sessions_url
    assert_response :success
  end

  test "should get sessions" do
    get static_pages_sessions_url
    assert_response :success
    assert_select "title", "Speaker Admin"

  end

  test "should get csas" do
    get static_pages_csas_url
    assert_response :success
    assert_select "title", "Speaker Admin"

  end

  test "should get staff" do
    get static_pages_staff_url
    assert_response :success
    assert_select "title", "Speaker Admin"

  end

end
