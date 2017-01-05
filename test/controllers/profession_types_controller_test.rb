require 'test_helper'

class ProfessionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profession_type = profession_types(:one)
  end

  test "should get index" do
    get profession_types_url
    assert_response :success
  end

  test "should get new" do
    get new_profession_type_url
    assert_response :success
  end

  test "should create profession_type" do
    assert_difference('ProfessionType.count') do
      post profession_types_url, params: { profession_type: { title: @profession_type.title } }
    end

    assert_redirected_to profession_type_url(ProfessionType.last)
  end

  test "should show profession_type" do
    get profession_type_url(@profession_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_profession_type_url(@profession_type)
    assert_response :success
  end

  test "should update profession_type" do
    patch profession_type_url(@profession_type), params: { profession_type: { title: @profession_type.title } }
    assert_redirected_to profession_type_url(@profession_type)
  end

  test "should destroy profession_type" do
    assert_difference('ProfessionType.count', -1) do
      delete profession_type_url(@profession_type)
    end

    assert_redirected_to profession_types_url
  end
end
