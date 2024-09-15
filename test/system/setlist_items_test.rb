require "application_system_test_case"

class SetlistItemsTest < ApplicationSystemTestCase
  setup do
    @setlist_item = setlist_items(:one)
  end

  test "visiting the index" do
    visit setlist_items_url
    assert_selector "h1", text: "Setlist items"
  end

  test "should create setlist item" do
    visit setlist_items_url
    click_on "New setlist item"

    fill_in "Position", with: @setlist_item.position
    fill_in "Setlist", with: @setlist_item.setlist_id
    fill_in "Song", with: @setlist_item.song_id
    click_on "Create Setlist item"

    assert_text "Setlist item was successfully created"
    click_on "Back"
  end

  test "should update Setlist item" do
    visit setlist_item_url(@setlist_item)
    click_on "Edit this setlist item", match: :first

    fill_in "Position", with: @setlist_item.position
    fill_in "Setlist", with: @setlist_item.setlist_id
    fill_in "Song", with: @setlist_item.song_id
    click_on "Update Setlist item"

    assert_text "Setlist item was successfully updated"
    click_on "Back"
  end

  test "should destroy Setlist item" do
    visit setlist_item_url(@setlist_item)
    click_on "Destroy this setlist item", match: :first

    assert_text "Setlist item was successfully destroyed"
  end
end
