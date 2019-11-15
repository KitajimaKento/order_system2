require 'test_helper'

class MenuMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menu_master = menu_masters(:one)
  end

  test "should get index" do
    get menu_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_menu_master_url
    assert_response :success
  end

  test "should create menu_master" do
    assert_difference('MenuMaster.count') do
      post menu_masters_url, params: { menu_master: { menu_ID: @menu_master.menu_ID, name: @menu_master.name, price: @menu_master.price, price_tax_not: @menu_master.price_tax_not } }
    end

    assert_redirected_to menu_master_url(MenuMaster.last)
  end

  test "should show menu_master" do
    get menu_master_url(@menu_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_menu_master_url(@menu_master)
    assert_response :success
  end

  test "should update menu_master" do
    patch menu_master_url(@menu_master), params: { menu_master: { menu_ID: @menu_master.menu_ID, name: @menu_master.name, price: @menu_master.price, price_tax_not: @menu_master.price_tax_not } }
    assert_redirected_to menu_master_url(@menu_master)
  end

  test "should destroy menu_master" do
    assert_difference('MenuMaster.count', -1) do
      delete menu_master_url(@menu_master)
    end

    assert_redirected_to menu_masters_url
  end
end
