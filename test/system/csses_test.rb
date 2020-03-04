require "application_system_test_case"

class CssesTest < ApplicationSystemTestCase
  setup do
    @css = csses(:one)
  end

  test "visiting the index" do
    visit csses_url
    assert_selector "h1", text: "Csses"
  end

  test "creating a Css" do
    visit csses_url
    click_on "New Css"

    fill_in "Code", with: @css.code
    fill_in "Ttle", with: @css.ttle
    click_on "Create Css"

    assert_text "Css was successfully created"
    click_on "Back"
  end

  test "updating a Css" do
    visit csses_url
    click_on "Edit", match: :first

    fill_in "Code", with: @css.code
    fill_in "Ttle", with: @css.ttle
    click_on "Update Css"

    assert_text "Css was successfully updated"
    click_on "Back"
  end

  test "destroying a Css" do
    visit csses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Css was successfully destroyed"
  end
end
