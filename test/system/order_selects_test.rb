require "application_system_test_case"

class OrderSelectsTest < ApplicationSystemTestCase
  setup do
    @order_select = order_selects(:one)
  end

  test "visiting the index" do
    visit order_selects_url
    assert_selector "h1", text: "Order Selects"
  end

  test "creating a Order select" do
    visit order_selects_url
    click_on "New Order Select"

    fill_in "Menu id", with: @order_select.menu_ID
    fill_in "Order id", with: @order_select.order_ID
    click_on "Create Order select"

    assert_text "Order select was successfully created"
    click_on "Back"
  end

  test "updating a Order select" do
    visit order_selects_url
    click_on "Edit", match: :first

    fill_in "Menu id", with: @order_select.menu_ID
    fill_in "Order id", with: @order_select.order_ID
    click_on "Update Order select"

    assert_text "Order select was successfully updated"
    click_on "Back"
  end

  test "destroying a Order select" do
    visit order_selects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order select was successfully destroyed"
  end
end
