require "application_system_test_case"

class ShowsTest < ApplicationSystemTestCase
  setup do
    @show = shows(:one)
  end

  test "visiting the index" do
    visit shows_url
    assert_selector "h1", text: "Shows"
  end

  test "should create show" do
    visit shows_url
    click_on "New show"

    fill_in "Artist", with: @show.artist_id
    fill_in "Isverified", with: @show.isverified
    fill_in "Lastuser", with: @show.lastuser
    fill_in "Meta", with: @show.meta
    fill_in "Opener", with: @show.opener
    fill_in "Permalink", with: @show.permalink
    fill_in "Settype", with: @show.settype
    fill_in "Showdate", with: @show.showdate
    fill_in "Shownotes", with: @show.shownotes
    fill_in "Showorder", with: @show.showorder
    fill_in "Showtitle", with: @show.showtitle
    fill_in "Showyear", with: @show.showyear
    fill_in "Soundcheck", with: @show.soundcheck
    fill_in "Tour", with: @show.tour_id
    fill_in "Venue", with: @show.venue_id
    click_on "Create Show"

    assert_text "Show was successfully created"
    click_on "Back"
  end

  test "should update Show" do
    visit show_url(@show)
    click_on "Edit this show", match: :first

    fill_in "Artist", with: @show.artist_id
    fill_in "Isverified", with: @show.isverified
    fill_in "Lastuser", with: @show.lastuser
    fill_in "Meta", with: @show.meta
    fill_in "Opener", with: @show.opener
    fill_in "Permalink", with: @show.permalink
    fill_in "Settype", with: @show.settype
    fill_in "Showdate", with: @show.showdate
    fill_in "Shownotes", with: @show.shownotes
    fill_in "Showorder", with: @show.showorder
    fill_in "Showtitle", with: @show.showtitle
    fill_in "Showyear", with: @show.showyear
    fill_in "Soundcheck", with: @show.soundcheck
    fill_in "Tour", with: @show.tour_id
    fill_in "Venue", with: @show.venue_id
    click_on "Update Show"

    assert_text "Show was successfully updated"
    click_on "Back"
  end

  test "should destroy Show" do
    visit show_url(@show)
    click_on "Destroy this show", match: :first

    assert_text "Show was successfully destroyed"
  end
end
