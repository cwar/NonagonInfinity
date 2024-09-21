require "application_system_test_case"

class SongsTest < ApplicationSystemTestCase
  setup do
    @song = songs(:one)
  end

  test "visiting the index" do
    visit songs_url
    assert_selector "h1", text: "Songs"
  end

  test "should create song" do
    visit songs_url
    click_on "New song"

    fill_in "is_original", with: @song.is_original
    fill_in "Lyrics", with: @song.lyrics
    fill_in "Metadata", with: @song.metadata
    fill_in "Name", with: @song.name
    fill_in "Nickname", with: @song.nickname
    fill_in "Original artist", with: @song.original_artist
    fill_in "Slug", with: @song.slug
    click_on "Create Song"

    assert_text "Song was successfully created"
    click_on "Back"
  end

  test "should update Song" do
    visit song_url(@song)
    click_on "Edit this song", match: :first

    fill_in "is_original", with: @song.is_original
    fill_in "Lyrics", with: @song.lyrics
    fill_in "Metadata", with: @song.metadata
    fill_in "Name", with: @song.name
    fill_in "Nickname", with: @song.nickname
    fill_in "Original artist", with: @song.original_artist
    fill_in "Slug", with: @song.slug
    click_on "Update Song"

    assert_text "Song was successfully updated"
    click_on "Back"
  end

  test "should destroy Song" do
    visit song_url(@song)
    click_on "Destroy this song", match: :first

    assert_text "Song was successfully destroyed"
  end
end
