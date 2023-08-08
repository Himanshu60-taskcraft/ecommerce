require 'test_helper'

class ShopkeeperCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopkeeper_category = shopkeeper_categories(:one)
  end

  test "should get index" do
    get shopkeeper_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_shopkeeper_category_url
    assert_response :success
  end

  test "should create shopkeeper_category" do
    assert_difference('ShopkeeperCategory.count') do
      post shopkeeper_categories_url, params: { shopkeeper_category: { category: @shopkeeper_category.category } }
    end

    assert_redirected_to shopkeeper_category_url(ShopkeeperCategory.last)
  end

  test "should show shopkeeper_category" do
    get shopkeeper_category_url(@shopkeeper_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopkeeper_category_url(@shopkeeper_category)
    assert_response :success
  end

  test "should update shopkeeper_category" do
    patch shopkeeper_category_url(@shopkeeper_category), params: { shopkeeper_category: { category: @shopkeeper_category.category } }
    assert_redirected_to shopkeeper_category_url(@shopkeeper_category)
  end

  test "should destroy shopkeeper_category" do
    assert_difference('ShopkeeperCategory.count', -1) do
      delete shopkeeper_category_url(@shopkeeper_category)
    end

    assert_redirected_to shopkeeper_categories_url
  end
end
