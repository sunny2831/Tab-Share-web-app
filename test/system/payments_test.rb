require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "creating a Payment" do
    visit payments_url
    click_on "New Payment"

    fill_in "Paying user", with: @payment.paying_user_id
    fill_in "Payment amount", with: @payment.payment_amount
    fill_in "Submitting user", with: @payment.submitting_user_id
    fill_in "Tab", with: @payment.tab_id
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "updating a Payment" do
    visit payments_url
    click_on "Edit", match: :first

    fill_in "Paying user", with: @payment.paying_user_id
    fill_in "Payment amount", with: @payment.payment_amount
    fill_in "Submitting user", with: @payment.submitting_user_id
    fill_in "Tab", with: @payment.tab_id
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment" do
    visit payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment was successfully destroyed"
  end
end
