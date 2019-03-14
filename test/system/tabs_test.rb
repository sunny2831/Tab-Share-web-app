require "application_system_test_case"

class TabsTest < ApplicationSystemTestCase
  setup do
    @tab = tabs(:one)
  end

  test "visiting the index" do
    visit tabs_url
    assert_selector "h1", text: "Tabs"
  end

  test "creating a Tab" do
    visit tabs_url
    click_on "New Tab"

    fill_in "Description", with: @tab.description
    fill_in "Initial amount owed", with: @tab.initial_amount_owed
    fill_in "Owed by user", with: @tab.owed_by_user_id
    fill_in "Owed to user", with: @tab.owed_to_user_id
    fill_in "Tab total", with: @tab.tab_total
    click_on "Create Tab"

    assert_text "Tab was successfully created"
    click_on "Back"
  end

  test "updating a Tab" do
    visit tabs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tab.description
    fill_in "Initial amount owed", with: @tab.initial_amount_owed
    fill_in "Owed by user", with: @tab.owed_by_user_id
    fill_in "Owed to user", with: @tab.owed_to_user_id
    fill_in "Tab total", with: @tab.tab_total
    click_on "Update Tab"

    assert_text "Tab was successfully updated"
    click_on "Back"
  end

  test "destroying a Tab" do
    visit tabs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tab was successfully destroyed"
  end
end
