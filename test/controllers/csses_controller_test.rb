require 'test_helper'

class CssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @css = csses(:one)
  end

  test "should get index" do
    get csses_url
    assert_response :success
  end

  test "should get new" do
    get new_css_url
    assert_response :success
  end

  test "should create css" do
    assert_difference('Css.count') do
      post csses_url, params: { css: { code: @css.code, ttle: @css.ttle } }
    end

    assert_redirected_to css_url(Css.last)
  end

  test "should show css" do
    get css_url(@css)
    assert_response :success
  end

  test "should get edit" do
    get edit_css_url(@css)
    assert_response :success
  end

  test "should update css" do
    patch css_url(@css), params: { css: { code: @css.code, ttle: @css.ttle } }
    assert_redirected_to css_url(@css)
  end

  test "should destroy css" do
    assert_difference('Css.count', -1) do
      delete css_url(@css)
    end

    assert_redirected_to csses_url
  end
end
