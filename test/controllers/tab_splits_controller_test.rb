require 'test_helper'

class TabSplitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tab_split = tab_splits(:one)
  end

  test "should get index" do
    get tab_splits_url
    assert_response :success
  end

  test "should get new" do
    get new_tab_split_url
    assert_response :success
  end

  test "should create tab_split" do
    assert_difference('TabSplit.count') do
      post tab_splits_url, params: { tab_split: { payment_pending: @tab_split.payment_pending, tab_id: @tab_split.tab_id, user_id: @tab_split.user_id } }
    end

    assert_redirected_to tab_split_url(TabSplit.last)
  end

  test "should show tab_split" do
    get tab_split_url(@tab_split)
    assert_response :success
  end

  test "should get edit" do
    get edit_tab_split_url(@tab_split)
    assert_response :success
  end

  test "should update tab_split" do
    patch tab_split_url(@tab_split), params: { tab_split: { payment_pending: @tab_split.payment_pending, tab_id: @tab_split.tab_id, user_id: @tab_split.user_id } }
    assert_redirected_to tab_split_url(@tab_split)
  end

  test "should destroy tab_split" do
    assert_difference('TabSplit.count', -1) do
      delete tab_split_url(@tab_split)
    end

    assert_redirected_to tab_splits_url
  end
end
