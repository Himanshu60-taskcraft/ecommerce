require 'test_helper'

class RoughsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rough = roughs(:one)
  end

  test "should get index" do
    get roughs_url
    assert_response :success
  end

  test "should get new" do
    get new_rough_url
    assert_response :success
  end

  test "should create rough" do
    assert_difference('Rough.count') do
      post roughs_url, params: { rough: { name: @rough.name } }
    end

    assert_redirected_to rough_url(Rough.last)
  end

  test "should show rough" do
    get rough_url(@rough)
    assert_response :success
  end

  test "should get edit" do
    get edit_rough_url(@rough)
    assert_response :success
  end

  test "should update rough" do
    patch rough_url(@rough), params: { rough: { name: @rough.name } }
    assert_redirected_to rough_url(@rough)
  end

  test "should destroy rough" do
    assert_difference('Rough.count', -1) do
      delete rough_url(@rough)
    end

    assert_redirected_to roughs_url
  end
end
