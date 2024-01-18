# frozen_string_literal: true

require "test_helper"

class User::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_dashboard_index_url
    assert_response :success
  end

  test "should get api_keys" do
    get user_dashboard_api_keys_url
    assert_response :success
  end
end
