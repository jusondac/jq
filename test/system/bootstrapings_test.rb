require "application_system_test_case"

class BootstrapingsTest < ApplicationSystemTestCase
  setup do
    @bootstraping = bootstrapings(:one)
  end

  test "visiting the index" do
    visit bootstrapings_url
    assert_selector "h1", text: "Bootstrapings"
  end

  test "creating a Bootstraping" do
    visit bootstrapings_url
    click_on "New Bootstraping"

    fill_in "Code", with: @bootstraping.code
    fill_in "Title", with: @bootstraping.title
    click_on "Create Bootstraping"

    assert_text "Bootstraping was successfully created"
    click_on "Back"
  end

  test "updating a Bootstraping" do
    visit bootstrapings_url
    click_on "Edit", match: :first

    fill_in "Code", with: @bootstraping.code
    fill_in "Title", with: @bootstraping.title
    click_on "Update Bootstraping"

    assert_text "Bootstraping was successfully updated"
    click_on "Back"
  end

  test "destroying a Bootstraping" do
    visit bootstrapings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bootstraping was successfully destroyed"
  end
end
