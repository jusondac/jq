require "application_system_test_case"

class JavaqueriesTest < ApplicationSystemTestCase
  setup do
    @javaquery = javaqueries(:one)
  end

  test "visiting the index" do
    visit javaqueries_url
    assert_selector "h1", text: "Javaqueries"
  end

  test "creating a Javaquery" do
    visit javaqueries_url
    click_on "New Javaquery"

    fill_in "Code", with: @javaquery.code
    fill_in "Title", with: @javaquery.title
    click_on "Create Javaquery"

    assert_text "Javaquery was successfully created"
    click_on "Back"
  end

  test "updating a Javaquery" do
    visit javaqueries_url
    click_on "Edit", match: :first

    fill_in "Code", with: @javaquery.code
    fill_in "Title", with: @javaquery.title
    click_on "Update Javaquery"

    assert_text "Javaquery was successfully updated"
    click_on "Back"
  end

  test "destroying a Javaquery" do
    visit javaqueries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Javaquery was successfully destroyed"
  end
end
