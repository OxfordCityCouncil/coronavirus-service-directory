require "application_system_test_case"

class Admin::ServicesTest < ApplicationSystemTestCase
  setup do
    @admin_service = admin_services(:one)
  end

  test "visiting the index" do
    visit admin_services_url
    assert_selector "h1", text: "Admin/Services"
  end

  test "creating a Service" do
    visit admin_services_url
    click_on "New Admin/Service"

    click_on "Create Service"

    assert_text "Service was successfully created"
    click_on "Back"
  end

  test "updating a Service" do
    visit admin_services_url
    click_on "Edit", match: :first

    click_on "Update Service"

    assert_text "Service was successfully updated"
    click_on "Back"
  end

  test "destroying a Service" do
    visit admin_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service was successfully destroyed"
  end
end
