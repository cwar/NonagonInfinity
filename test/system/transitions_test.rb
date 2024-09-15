require "application_system_test_case"

class TransitionsTest < ApplicationSystemTestCase
  setup do
    @transition = transitions(:one)
  end

  test "visiting the index" do
    visit transitions_url
    assert_selector "h1", text: "Transitions"
  end

  test "should create transition" do
    visit transitions_url
    click_on "New transition"

    fill_in "Default transition", with: @transition.default_transition
    fill_in "Desc", with: @transition.desc
    fill_in "Dropdown", with: @transition.dropdown
    fill_in "Transition", with: @transition.transition
    fill_in "Updated at", with: @transition.updated_at
    click_on "Create Transition"

    assert_text "Transition was successfully created"
    click_on "Back"
  end

  test "should update Transition" do
    visit transition_url(@transition)
    click_on "Edit this transition", match: :first

    fill_in "Default transition", with: @transition.default_transition
    fill_in "Desc", with: @transition.desc
    fill_in "Dropdown", with: @transition.dropdown
    fill_in "Transition", with: @transition.transition
    fill_in "Updated at", with: @transition.updated_at.to_s
    click_on "Update Transition"

    assert_text "Transition was successfully updated"
    click_on "Back"
  end

  test "should destroy Transition" do
    visit transition_url(@transition)
    click_on "Destroy this transition", match: :first

    assert_text "Transition was successfully destroyed"
  end
end
