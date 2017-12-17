require 'test_helper'

class WordContentCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_content_category = word_content_categories(:one)
  end

  test "should get index" do
    get word_content_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_word_content_category_url
    assert_response :success
  end

  test "should create word_content_category" do
    assert_difference('WordContentCategory.count') do
      post word_content_categories_url, params: { word_content_category: { name: @word_content_category.name, order: @word_content_category.order } }
    end

    assert_redirected_to word_content_category_url(WordContentCategory.last)
  end

  test "should show word_content_category" do
    get word_content_category_url(@word_content_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_content_category_url(@word_content_category)
    assert_response :success
  end

  test "should update word_content_category" do
    patch word_content_category_url(@word_content_category), params: { word_content_category: { name: @word_content_category.name, order: @word_content_category.order } }
    assert_redirected_to word_content_category_url(@word_content_category)
  end

  test "should destroy word_content_category" do
    assert_difference('WordContentCategory.count', -1) do
      delete word_content_category_url(@word_content_category)
    end

    assert_redirected_to word_content_categories_url
  end
end
