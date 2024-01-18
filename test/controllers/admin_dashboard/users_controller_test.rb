# frozen_string_literal: true

require "test_helper"

class AdminDashboard::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_dashboard_user = admin_dashboard_users(:one)
  end

  test "should get index" do
    get admin_dashboard_users_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_dashboard_user_url
    assert_response :success
  end

  test "should create admin_dashboard_user" do
    assert_difference("AdminDashboard::User.count") do
      post admin_dashboard_users_url, params: { admin_dashboard_user: {} }
    end

    assert_redirected_to admin_dashboard_user_url(AdminDashboard::User.last)
  end

  test "should show admin_dashboard_user" do
    get admin_dashboard_user_url(@admin_dashboard_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_dashboard_user_url(@admin_dashboard_user)
    assert_response :success
  end

  test "should update admin_dashboard_user" do
    patch admin_dashboard_user_url(@admin_dashboard_user), params: { admin_dashboard_user: {} }
    assert_redirected_to admin_dashboard_user_url(@admin_dashboard_user)
  end

  test "should destroy admin_dashboard_user" do
    assert_difference("AdminDashboard::User.count", -1) do
      delete admin_dashboard_user_url(@admin_dashboard_user)
    end

    assert_redirected_to admin_dashboard_users_url
  end
end
