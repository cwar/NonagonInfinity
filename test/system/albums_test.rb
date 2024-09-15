require "application_system_test_case"

class AlbumsTest < ApplicationSystemTestCase
  setup do
    @album = albums(:one)
  end

  test "visiting the index" do
    visit albums_url
    assert_selector "h1", text: "Albums"
  end

  test "should create album" do
    visit albums_url
    click_on "New album"

    fill_in "Album notes", with: @album.album_notes
    fill_in "Albumtitle", with: @album.albumtitle
    fill_in "Artist", with: @album.artist_id
    fill_in "Cover", with: @album.cover
    fill_in "Displayname", with: @album.displayname
    check "Is statsable" if @album.is_statsable
    fill_in "Lastmod", with: @album.lastmod
    fill_in "Lastuser", with: @album.lastuser
    fill_in "Releasedate", with: @album.releasedate
    fill_in "Slug", with: @album.slug
    click_on "Create Album"

    assert_text "Album was successfully created"
    click_on "Back"
  end

  test "should update Album" do
    visit album_url(@album)
    click_on "Edit this album", match: :first

    fill_in "Album notes", with: @album.album_notes
    fill_in "Albumtitle", with: @album.albumtitle
    fill_in "Artist", with: @album.artist_id
    fill_in "Cover", with: @album.cover
    fill_in "Displayname", with: @album.displayname
    check "Is statsable" if @album.is_statsable
    fill_in "Lastmod", with: @album.lastmod
    fill_in "Lastuser", with: @album.lastuser
    fill_in "Releasedate", with: @album.releasedate
    fill_in "Slug", with: @album.slug
    click_on "Update Album"

    assert_text "Album was successfully updated"
    click_on "Back"
  end

  test "should destroy Album" do
    visit album_url(@album)
    click_on "Destroy this album", match: :first

    assert_text "Album was successfully destroyed"
  end
end
