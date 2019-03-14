require "application_system_test_case"

class TabSplitsTest < ApplicationSystemTestCase
  setup do
    @tab_split = tab_splits(:one)
  end

  test "visiting the index" do
    visit tab_splits_url
    assert_selector "h1", text: "Tab Splits"
  end

  test "creating a Tab split" do
    visit tab_splits_url
    click_on "New Tab Split"

    fill_in "Payment pending", with: @tab_split.payment_pending
    fill_in "Tab", with: @tab_split.tab_id
    fill_in "User", with: @tab_split.user_id
    click_on "Create Tab split"

    assert_text "Tab split was successfully created"
    click_on "Back"
  end

  test "updating a Tab split" do
    visit tab_splits_url
    click_on "Edit", match: :first

    fill_in "Payment pending", with: @tab_split.payment_pending
    fill_in "Tab", with: @tab_split.tab_id
    fill_in "User", with: @tab_split.user_id
    click_on "Update Tab split"

    assert_text "Tab split was successfully updated"
    click_on "Back"
  end

  test "destroying a Tab split" do
    visit tab_splits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tab split was successfully destroyed"
  end
end
