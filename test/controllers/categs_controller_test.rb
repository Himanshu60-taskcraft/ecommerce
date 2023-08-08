require 'test_helper'

class CategsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categ = categs(:one)
  end

  test "should get index" do
    get categs_url
    assert_response :success
  end

  test "should get new" do
    get new_categ_url
    assert_response :success
  end

  test "should create categ" do
    assert_difference('Categ.count') do
      post categs_url, params: { categ: { category: @categ.category } }
    end

    assert_redirected_to categ_url(Categ.last)
  end

  test "should show categ" do
    get categ_url(@categ)
    assert_response :success
  end

  test "should get edit" do
    get edit_categ_url(@categ)
    assert_response :success
  end

  test "should update categ" do
    patch categ_url(@categ), params: { categ: { category: @categ.category } }
    assert_redirected_to categ_url(@categ)
  end

  test "should destroy categ" do
    assert_difference('Categ.count', -1) do
      delete categ_url(@categ)
    end

    assert_redirected_to categs_url
  end
end
