# frozen_string_literal: true

require "application_system_test_case"

class AdminDashboard::ApiKeysTest < ApplicationSystemTestCase
  setup do
    @admin_dashboard_api_key = admin_dashboard_api_keys(:one)
  end

  test "visiting the index" do
    visit admin_dashboard_api_keys_url
    assert_selector "h1", text: "Api keys"
  end

  test "should create api key" do
    visit admin_dashboard_api_keys_url
    click_on "New api key"

    click_on "Create Api key"

    assert_text "Api key was successfully created"
    click_on "Back"
  end

  test "should update Api key" do
    visit admin_dashboard_api_key_url(@admin_dashboard_api_key)
    click_on "Edit this api key", match: :first

    click_on "Update Api key"

    assert_text "Api key was successfully updated"
    click_on "Back"
  end

  test "should destroy Api key" do
    visit admin_dashboard_api_key_url(@admin_dashboard_api_key)
    click_on "Destroy this api key", match: :first

    assert_text "Api key was successfully destroyed"
  end
end
