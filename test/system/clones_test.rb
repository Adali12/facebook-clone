require "application_system_test_case"

class ClonesTest < ApplicationSystemTestCase
  setup do
    @clone = clones(:one)
  end

  test "visiting the index" do
    visit clones_url
    assert_selector "h1", text: "Clones"
  end

  test "creating a Clone" do
    visit clones_url
    click_on "New Clone"

    fill_in "First name", with: @clone.First_name
    fill_in "Last name", with: @clone.Last_name
    fill_in "Comfirm password", with: @clone.comfirm_password
    fill_in "Email", with: @clone.email
    fill_in "Password", with: @clone.password
    click_on "Create Clone"

    assert_text "Clone was successfully created"
    click_on "Back"
  end

  test "updating a Clone" do
    visit clones_url
    click_on "Edit", match: :first

    fill_in "First name", with: @clone.First_name
    fill_in "Last name", with: @clone.Last_name
    fill_in "Comfirm password", with: @clone.comfirm_password
    fill_in "Email", with: @clone.email
    fill_in "Password", with: @clone.password
    click_on "Update Clone"

    assert_text "Clone was successfully updated"
    click_on "Back"
  end

  test "destroying a Clone" do
    visit clones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clone was successfully destroyed"
  end
end
