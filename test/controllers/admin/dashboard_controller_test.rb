require "test_helper"

class Admin::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_dashboard_index_url
    assert_response :success
  end

  test "should get users" do
    get admin_dashboard_users_url
    assert_response :success
  end

  test "should get products" do
    get admin_dashboard_products_url
    assert_response :success
  end

  test "should get categories" do
    get admin_dashboard_categories_url
    assert_response :success
  end

  test "should get bills" do
    get admin_dashboard_bills_url
    assert_response :success
  end
end
