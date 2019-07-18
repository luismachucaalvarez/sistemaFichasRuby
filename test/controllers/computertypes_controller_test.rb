require 'test_helper'

class ComputertypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @computertype = computertypes(:one)
  end

  test "should get index" do
    get computertypes_url
    assert_response :success
  end

  test "should get new" do
    get new_computertype_url
    assert_response :success
  end

  test "should create computertype" do
    assert_difference('Computertype.count') do
      post computertypes_url, params: { computertype: { description: @computertype.description } }
    end

    assert_redirected_to computertype_url(Computertype.last)
  end

  test "should show computertype" do
    get computertype_url(@computertype)
    assert_response :success
  end

  test "should get edit" do
    get edit_computertype_url(@computertype)
    assert_response :success
  end

  test "should update computertype" do
    patch computertype_url(@computertype), params: { computertype: { description: @computertype.description } }
    assert_redirected_to computertype_url(@computertype)
  end

  test "should destroy computertype" do
    assert_difference('Computertype.count', -1) do
      delete computertype_url(@computertype)
    end

    assert_redirected_to computertypes_url
  end
end
