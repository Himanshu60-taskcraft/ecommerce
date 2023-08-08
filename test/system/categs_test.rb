require "application_system_test_case"

class CategsTest < ApplicationSystemTestCase
  setup do
    @categ = categs(:one)
  end

  test "visiting the index" do
    visit categs_url
    assert_selector "h1", text: "Categs"
  end

  test "creating a Categ" do
    visit categs_url
    click_on "New Categ"

    fill_in "Category", with: @categ.category
    click_on "Create Categ"

    assert_text "Categ was successfully created"
    click_on "Back"
  end

  test "updating a Categ" do
    visit categs_url
    click_on "Edit", match: :first

    fill_in "Category", with: @categ.category
    click_on "Update Categ"

    assert_text "Categ was successfully updated"
    click_on "Back"
  end

  test "destroying a Categ" do
    visit categs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categ was successfully destroyed"
  end
end
