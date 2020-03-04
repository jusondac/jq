require 'test_helper'

class JavaqueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @javaquery = javaqueries(:one)
  end

  test "should get index" do
    get javaqueries_url
    assert_response :success
  end

  test "should get new" do
    get new_javaquery_url
    assert_response :success
  end

  test "should create javaquery" do
    assert_difference('Javaquery.count') do
      post javaqueries_url, params: { javaquery: { code: @javaquery.code, title: @javaquery.title } }
    end

    assert_redirected_to javaquery_url(Javaquery.last)
  end

  test "should show javaquery" do
    get javaquery_url(@javaquery)
    assert_response :success
  end

  test "should get edit" do
    get edit_javaquery_url(@javaquery)
    assert_response :success
  end

  test "should update javaquery" do
    patch javaquery_url(@javaquery), params: { javaquery: { code: @javaquery.code, title: @javaquery.title } }
    assert_redirected_to javaquery_url(@javaquery)
  end

  test "should destroy javaquery" do
    assert_difference('Javaquery.count', -1) do
      delete javaquery_url(@javaquery)
    end

    assert_redirected_to javaqueries_url
  end
end
