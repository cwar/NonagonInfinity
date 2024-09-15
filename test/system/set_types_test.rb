require "application_system_test_case"

class SetTypesTest < ApplicationSystemTestCase
  setup do
    @set_type = set_types(:one)
  end

  test "visiting the index" do
    visit set_types_url
    assert_selector "h1", text: "Set types"
  end

  test "should create set type" do
    visit set_types_url
    click_on "New set type"

    fill_in "Settype", with: @set_type.settype
    click_on "Create Set type"

    assert_text "Set type was successfully created"
    click_on "Back"
  end

  test "should update Set type" do
    visit set_type_url(@set_type)
    click_on "Edit this set type", match: :first

    fill_in "Settype", with: @set_type.settype
    click_on "Update Set type"

    assert_text "Set type was successfully updated"
    click_on "Back"
  end

  test "should destroy Set type" do
    visit set_type_url(@set_type)
    click_on "Destroy this set type", match: :first

    assert_text "Set type was successfully destroyed"
  end
end
