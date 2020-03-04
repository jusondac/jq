require 'test_helper'

class BootstrapingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bootstraping = bootstrapings(:one)
  end

  test "should get index" do
    get bootstrapings_url
    assert_response :success
  end

  test "should get new" do
    get new_bootstraping_url
    assert_response :success
  end

  test "should create bootstraping" do
    assert_difference('Bootstraping.count') do
      post bootstrapings_url, params: { bootstraping: { code: @bootstraping.code, title: @bootstraping.title } }
    end

    assert_redirected_to bootstraping_url(Bootstraping.last)
  end

  test "should show bootstraping" do
    get bootstraping_url(@bootstraping)
    assert_response :success
  end

  test "should get edit" do
    get edit_bootstraping_url(@bootstraping)
    assert_response :success
  end

  test "should update bootstraping" do
    patch bootstraping_url(@bootstraping), params: { bootstraping: { code: @bootstraping.code, title: @bootstraping.title } }
    assert_redirected_to bootstraping_url(@bootstraping)
  end

  test "should destroy bootstraping" do
    assert_difference('Bootstraping.count', -1) do
      delete bootstraping_url(@bootstraping)
    end

    assert_redirected_to bootstrapings_url
  end
end
