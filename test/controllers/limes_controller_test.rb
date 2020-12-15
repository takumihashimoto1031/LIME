require "test_helper"

class LimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lime = limes(:one)
  end

  test "should get index" do
    get limes_url
    assert_response :success
  end

  test "should get new" do
    get new_lime_url
    assert_response :success
  end

  test "should create lime" do
    assert_difference('Lime.count') do
      post limes_url, params: { lime: { message: @lime.message, title: @lime.title } }
    end

    assert_redirected_to lime_url(Lime.last)
  end

  test "should show lime" do
    get lime_url(@lime)
    assert_response :success
  end

  test "should get edit" do
    get edit_lime_url(@lime)
    assert_response :success
  end

  test "should update lime" do
    patch lime_url(@lime), params: { lime: { message: @lime.message, title: @lime.title } }
    assert_redirected_to lime_url(@lime)
  end

  test "should destroy lime" do
    assert_difference('Lime.count', -1) do
      delete lime_url(@lime)
    end

    assert_redirected_to limes_url
  end
end
