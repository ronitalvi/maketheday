require "application_system_test_case"

class AtolyelersTest < ApplicationSystemTestCase
  setup do
    @atolyeler = atolyelers(:one)
  end

  test "visiting the index" do
    visit atolyelers_url
    assert_selector "h1", text: "Atolyelers"
  end

  test "creating a Atolyeler" do
    visit atolyelers_url
    click_on "New Atolyeler"

    fill_in "Picture url", with: @atolyeler.picture_url
    click_on "Create Atolyeler"

    assert_text "Atolyeler was successfully created"
    click_on "Back"
  end

  test "updating a Atolyeler" do
    visit atolyelers_url
    click_on "Edit", match: :first

    fill_in "Picture url", with: @atolyeler.picture_url
    click_on "Update Atolyeler"

    assert_text "Atolyeler was successfully updated"
    click_on "Back"
  end

  test "destroying a Atolyeler" do
    visit atolyelers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atolyeler was successfully destroyed"
  end
end
