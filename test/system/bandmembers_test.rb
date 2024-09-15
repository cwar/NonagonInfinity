require "application_system_test_case"

class BandmembersTest < ApplicationSystemTestCase
  setup do
    @bandmember = bandmembers(:one)
  end

  test "visiting the index" do
    visit bandmembers_url
    assert_selector "h1", text: "Bandmembers"
  end

  test "should create bandmember" do
    visit bandmembers_url
    click_on "New bandmember"

    fill_in "Artist", with: @bandmember.artist_id
    fill_in "People", with: @bandmember.people_id
    fill_in "Role", with: @bandmember.role
    click_on "Create Bandmember"

    assert_text "Bandmember was successfully created"
    click_on "Back"
  end

  test "should update Bandmember" do
    visit bandmember_url(@bandmember)
    click_on "Edit this bandmember", match: :first

    fill_in "Artist", with: @bandmember.artist_id
    fill_in "People", with: @bandmember.people_id
    fill_in "Role", with: @bandmember.role
    click_on "Update Bandmember"

    assert_text "Bandmember was successfully updated"
    click_on "Back"
  end

  test "should destroy Bandmember" do
    visit bandmember_url(@bandmember)
    click_on "Destroy this bandmember", match: :first

    assert_text "Bandmember was successfully destroyed"
  end
end
