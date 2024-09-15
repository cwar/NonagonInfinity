require "application_system_test_case"

class SetlistsTest < ApplicationSystemTestCase
  setup do
    @setlist = setlists(:one)
  end

  test "visiting the index" do
    visit setlists_url
    assert_selector "h1", text: "Setlists"
  end

  test "should create setlist" do
    visit setlists_url
    click_on "New setlist"

    fill_in "Displayname", with: @setlist.displayname
    fill_in "Footnote", with: @setlist.footnote
    fill_in "Isjam", with: @setlist.isjam
    fill_in "Isjamchart", with: @setlist.isjamchart
    fill_in "Isreprise", with: @setlist.isreprise
    fill_in "Jamchartnote", with: @setlist.jamchartnote
    fill_in "Position", with: @setlist.position
    fill_in "Setnumber", with: @setlist.setnumber
    fill_in "Show", with: @setlist.show_id
    fill_in "Song", with: @setlist.song_id
    fill_in "Tracktime", with: @setlist.tracktime
    fill_in "Transition", with: @setlist.transition_id
    fill_in "Uniqueid", with: @setlist.uniqueid
    click_on "Create Setlist"

    assert_text "Setlist was successfully created"
    click_on "Back"
  end

  test "should update Setlist" do
    visit setlist_url(@setlist)
    click_on "Edit this setlist", match: :first

    fill_in "Displayname", with: @setlist.displayname
    fill_in "Footnote", with: @setlist.footnote
    fill_in "Isjam", with: @setlist.isjam
    fill_in "Isjamchart", with: @setlist.isjamchart
    fill_in "Isreprise", with: @setlist.isreprise
    fill_in "Jamchartnote", with: @setlist.jamchartnote
    fill_in "Position", with: @setlist.position
    fill_in "Setnumber", with: @setlist.setnumber
    fill_in "Show", with: @setlist.show_id
    fill_in "Song", with: @setlist.song_id
    fill_in "Tracktime", with: @setlist.tracktime
    fill_in "Transition", with: @setlist.transition_id
    fill_in "Uniqueid", with: @setlist.uniqueid
    click_on "Update Setlist"

    assert_text "Setlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Setlist" do
    visit setlist_url(@setlist)
    click_on "Destroy this setlist", match: :first

    assert_text "Setlist was successfully destroyed"
  end
end
