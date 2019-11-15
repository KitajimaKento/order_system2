require 'test_helper'

class OrderSelectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_select = order_selects(:one)
  end

  test "should get index" do
    get order_selects_url
    assert_response :success
  end

  test "should get new" do
    get new_order_select_url
    assert_response :success
  end

  test "should create order_select" do
    assert_difference('OrderSelect.count') do
      post order_selects_url, params: { order_select: { menu_ID: @order_select.menu_ID, order_ID: @order_select.order_ID } }
    end

    assert_redirected_to order_select_url(OrderSelect.last)
  end

  test "should show order_select" do
    get order_select_url(@order_select)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_select_url(@order_select)
    assert_response :success
  end

  test "should update order_select" do
    patch order_select_url(@order_select), params: { order_select: { menu_ID: @order_select.menu_ID, order_ID: @order_select.order_ID } }
    assert_redirected_to order_select_url(@order_select)
  end

  test "should destroy order_select" do
    assert_difference('OrderSelect.count', -1) do
      delete order_select_url(@order_select)
    end

    assert_redirected_to order_selects_url
  end
end
