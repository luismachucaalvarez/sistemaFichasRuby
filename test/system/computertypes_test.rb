require "application_system_test_case"

class ComputertypesTest < ApplicationSystemTestCase
  setup do
    @computertype = computertypes(:one)
  end

  test "visiting the index" do
    visit computertypes_url
    assert_selector "h1", text: "Computertypes"
  end

  test "creating a Computertype" do
    visit computertypes_url
    click_on "New Computertype"

    fill_in "Description", with: @computertype.description
    click_on "Create Computertype"

    assert_text "Computertype was successfully created"
    click_on "Back"
  end

  test "updating a Computertype" do
    visit computertypes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @computertype.description
    click_on "Update Computertype"

    assert_text "Computertype was successfully updated"
    click_on "Back"
  end

  test "destroying a Computertype" do
    visit computertypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Computertype was successfully destroyed"
  end
end
