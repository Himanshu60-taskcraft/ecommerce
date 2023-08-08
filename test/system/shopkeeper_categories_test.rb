require "application_system_test_case"

class ShopkeeperCategoriesTest < ApplicationSystemTestCase
  setup do
    @shopkeeper_category = shopkeeper_categories(:one)
  end

  test "visiting the index" do
    visit shopkeeper_categories_url
    assert_selector "h1", text: "Shopkeeper Categories"
  end

  test "creating a Shopkeeper category" do
    visit shopkeeper_categories_url
    click_on "New Shopkeeper Category"

    fill_in "Category", with: @shopkeeper_category.category
    click_on "Create Shopkeeper category"

    assert_text "Shopkeeper category was successfully created"
    click_on "Back"
  end

  test "updating a Shopkeeper category" do
    visit shopkeeper_categories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @shopkeeper_category.category
    click_on "Update Shopkeeper category"

    assert_text "Shopkeeper category was successfully updated"
    click_on "Back"
  end

  test "destroying a Shopkeeper category" do
    visit shopkeeper_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shopkeeper category was successfully destroyed"
  end
end
