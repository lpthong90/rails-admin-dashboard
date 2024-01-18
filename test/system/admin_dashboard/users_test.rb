# frozen_string_literal: true

require "application_system_test_case"

class AdminDashboard::UsersTest < ApplicationSystemTestCase
  setup do
    @admin_dashboard_user = admin_dashboard_users(:one)
  end

  test "visiting the index" do
    visit admin_dashboard_users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit admin_dashboard_users_url
    click_on "New user"

    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit admin_dashboard_user_url(@admin_dashboard_user)
    click_on "Edit this user", match: :first

    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit admin_dashboard_user_url(@admin_dashboard_user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
