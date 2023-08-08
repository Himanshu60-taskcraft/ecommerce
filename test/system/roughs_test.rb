require "application_system_test_case"

class RoughsTest < ApplicationSystemTestCase
  setup do
    @rough = roughs(:one)
  end

  test "visiting the index" do
    visit roughs_url
    assert_selector "h1", text: "Roughs"
  end

  test "creating a Rough" do
    visit roughs_url
    click_on "New Rough"

    fill_in "Name", with: @rough.name
    click_on "Create Rough"

    assert_text "Rough was successfully created"
    click_on "Back"
  end

  test "updating a Rough" do
    visit roughs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @rough.name
    click_on "Update Rough"

    assert_text "Rough was successfully updated"
    click_on "Back"
  end

  test "destroying a Rough" do
    visit roughs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rough was successfully destroyed"
  end
end
