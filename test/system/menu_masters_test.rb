require "application_system_test_case"

class MenuMastersTest < ApplicationSystemTestCase
  setup do
    @menu_master = menu_masters(:one)
  end

  test "visiting the index" do
    visit menu_masters_url
    assert_selector "h1", text: "Menu Masters"
  end

  test "creating a Menu master" do
    visit menu_masters_url
    click_on "New Menu Master"

    fill_in "Menu id", with: @menu_master.menu_ID
    fill_in "Name", with: @menu_master.name
    fill_in "Price", with: @menu_master.price
    fill_in "Price tax not", with: @menu_master.price_tax_not
    click_on "Create Menu master"

    assert_text "Menu master was successfully created"
    click_on "Back"
  end

  test "updating a Menu master" do
    visit menu_masters_url
    click_on "Edit", match: :first

    fill_in "Menu id", with: @menu_master.menu_ID
    fill_in "Name", with: @menu_master.name
    fill_in "Price", with: @menu_master.price
    fill_in "Price tax not", with: @menu_master.price_tax_not
    click_on "Update Menu master"

    assert_text "Menu master was successfully updated"
    click_on "Back"
  end

  test "destroying a Menu master" do
    visit menu_masters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menu master was successfully destroyed"
  end
end
