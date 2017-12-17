require 'test_helper'

class ServiceTypeCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_type_category = service_type_categories(:one)
  end

  test "should get index" do
    get service_type_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_service_type_category_url
    assert_response :success
  end

  test "should create service_type_category" do
    assert_difference('ServiceTypeCategory.count') do
      post service_type_categories_url, params: { service_type_category: { name: @service_type_category.name, order: @service_type_category.order } }
    end

    assert_redirected_to service_type_category_url(ServiceTypeCategory.last)
  end

  test "should show service_type_category" do
    get service_type_category_url(@service_type_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_type_category_url(@service_type_category)
    assert_response :success
  end

  test "should update service_type_category" do
    patch service_type_category_url(@service_type_category), params: { service_type_category: { name: @service_type_category.name, order: @service_type_category.order } }
    assert_redirected_to service_type_category_url(@service_type_category)
  end

  test "should destroy service_type_category" do
    assert_difference('ServiceTypeCategory.count', -1) do
      delete service_type_category_url(@service_type_category)
    end

    assert_redirected_to service_type_categories_url
  end
end
