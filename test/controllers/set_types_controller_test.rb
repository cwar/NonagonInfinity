require "test_helper"

class SetTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @set_type = set_types(:one)
  end

  test "should get index" do
    get set_types_url
    assert_response :success
  end

  test "should get new" do
    get new_set_type_url
    assert_response :success
  end

  test "should create set_type" do
    assert_difference("SetType.count") do
      post set_types_url, params: { set_type: { settype: @set_type.settype } }
    end

    assert_redirected_to set_type_url(SetType.last)
  end

  test "should show set_type" do
    get set_type_url(@set_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_set_type_url(@set_type)
    assert_response :success
  end

  test "should update set_type" do
    patch set_type_url(@set_type), params: { set_type: { settype: @set_type.settype } }
    assert_redirected_to set_type_url(@set_type)
  end

  test "should destroy set_type" do
    assert_difference("SetType.count", -1) do
      delete set_type_url(@set_type)
    end

    assert_redirected_to set_types_url
  end
end
