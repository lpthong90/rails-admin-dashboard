# frozen_string_literal: true

require "test_helper"

class AdminDashboard::ApiKeysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_dashboard_api_key = admin_dashboard_api_keys(:one)
  end

  test "should get index" do
    get admin_dashboard_api_keys_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_dashboard_api_key_url
    assert_response :success
  end

  test "should create admin_dashboard_api_key" do
    assert_difference("AdminDashboard::ApiKey.count") do
      post admin_dashboard_api_keys_url, params: { admin_dashboard_api_key: {} }
    end

    assert_redirected_to admin_dashboard_api_key_url(AdminDashboard::ApiKey.last)
  end

  test "should show admin_dashboard_api_key" do
    get admin_dashboard_api_key_url(@admin_dashboard_api_key)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_dashboard_api_key_url(@admin_dashboard_api_key)
    assert_response :success
  end

  test "should update admin_dashboard_api_key" do
    patch admin_dashboard_api_key_url(@admin_dashboard_api_key), params: { admin_dashboard_api_key: {} }
    assert_redirected_to admin_dashboard_api_key_url(@admin_dashboard_api_key)
  end

  test "should destroy admin_dashboard_api_key" do
    assert_difference("AdminDashboard::ApiKey.count", -1) do
      delete admin_dashboard_api_key_url(@admin_dashboard_api_key)
    end

    assert_redirected_to admin_dashboard_api_keys_url
  end
end
