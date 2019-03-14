require 'test_helper'

class TabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tab = tabs(:one)
  end

  test "should get index" do
    get tabs_url
    assert_response :success
  end

  test "should get new" do
    get new_tab_url
    assert_response :success
  end

  test "should create tab" do
    assert_difference('Tab.count') do
      post tabs_url, params: { tab: { description: @tab.description, initial_amount_owed: @tab.initial_amount_owed, owed_by_user_id: @tab.owed_by_user_id, owed_to_user_id: @tab.owed_to_user_id, tab_total: @tab.tab_total } }
    end

    assert_redirected_to tab_url(Tab.last)
  end

  test "should show tab" do
    get tab_url(@tab)
    assert_response :success
  end

  test "should get edit" do
    get edit_tab_url(@tab)
    assert_response :success
  end

  test "should update tab" do
    patch tab_url(@tab), params: { tab: { description: @tab.description, initial_amount_owed: @tab.initial_amount_owed, owed_by_user_id: @tab.owed_by_user_id, owed_to_user_id: @tab.owed_to_user_id, tab_total: @tab.tab_total } }
    assert_redirected_to tab_url(@tab)
  end

  test "should destroy tab" do
    assert_difference('Tab.count', -1) do
      delete tab_url(@tab)
    end

    assert_redirected_to tabs_url
  end
end
