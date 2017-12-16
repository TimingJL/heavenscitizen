require 'test_helper'

class ServiceTimeCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_time_category = service_time_categories(:one)
  end

  test "should get index" do
    get service_time_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_service_time_category_url
    assert_response :success
  end

  test "should create service_time_category" do
    assert_difference('ServiceTimeCategory.count') do
      post service_time_categories_url, params: { service_time_category: { name: @service_time_category.name } }
    end

    assert_redirected_to service_time_category_url(ServiceTimeCategory.last)
  end

  test "should show service_time_category" do
    get service_time_category_url(@service_time_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_time_category_url(@service_time_category)
    assert_response :success
  end

  test "should update service_time_category" do
    patch service_time_category_url(@service_time_category), params: { service_time_category: { name: @service_time_category.name } }
    assert_redirected_to service_time_category_url(@service_time_category)
  end

  test "should destroy service_time_category" do
    assert_difference('ServiceTimeCategory.count', -1) do
      delete service_time_category_url(@service_time_category)
    end

    assert_redirected_to service_time_categories_url
  end
end
