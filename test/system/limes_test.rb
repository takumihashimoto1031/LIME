require "application_system_test_case"

class LimesTest < ApplicationSystemTestCase
  setup do
    @lime = limes(:one)
  end

  test "visiting the index" do
    visit limes_url
    assert_selector "h1", text: "Limes"
  end

  test "creating a Lime" do
    visit limes_url
    click_on "New Lime"

    fill_in "Message", with: @lime.message
    fill_in "Title", with: @lime.title
    click_on "Create Lime"

    assert_text "Lime was successfully created"
    click_on "Back"
  end

  test "updating a Lime" do
    visit limes_url
    click_on "Edit", match: :first

    fill_in "Message", with: @lime.message
    fill_in "Title", with: @lime.title
    click_on "Update Lime"

    assert_text "Lime was successfully updated"
    click_on "Back"
  end

  test "destroying a Lime" do
    visit limes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lime was successfully destroyed"
  end
end
