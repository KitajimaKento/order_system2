require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Login id", with: @order.login_ID
    fill_in "Menu id", with: @order.menu_ID
    fill_in "Order id", with: @order.order_ID
    check "Status" if @order.status
    fill_in "Table id", with: @order.table_ID
    fill_in "Total", with: @order.total
    fill_in "Total tax not", with: @order.total_tax_not
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Login id", with: @order.login_ID
    fill_in "Menu id", with: @order.menu_ID
    fill_in "Order id", with: @order.order_ID
    check "Status" if @order.status
    fill_in "Table id", with: @order.table_ID
    fill_in "Total", with: @order.total
    fill_in "Total tax not", with: @order.total_tax_not
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
