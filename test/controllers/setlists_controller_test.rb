require "test_helper"

class SetlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setlist = setlists(:one)
  end

  test "should get index" do
    get setlists_url
    assert_response :success
  end

  test "should get new" do
    get new_setlist_url
    assert_response :success
  end

  test "should create setlist" do
    assert_difference("Setlist.count") do
      post setlists_url, params: { setlist: { displayname: @setlist.displayname, footnote: @setlist.footnote, isjam: @setlist.isjam, isjamchart: @setlist.isjamchart, isreprise: @setlist.isreprise, jamchartnote: @setlist.jamchartnote, position: @setlist.position, setnumber: @setlist.setnumber, show_id: @setlist.show_id, song_id: @setlist.song_id, tracktime: @setlist.tracktime, transition_id: @setlist.transition_id, uniqueid: @setlist.uniqueid } }
    end

    assert_redirected_to setlist_url(Setlist.last)
  end

  test "should show setlist" do
    get setlist_url(@setlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_setlist_url(@setlist)
    assert_response :success
  end

  test "should update setlist" do
    patch setlist_url(@setlist), params: { setlist: { displayname: @setlist.displayname, footnote: @setlist.footnote, isjam: @setlist.isjam, isjamchart: @setlist.isjamchart, isreprise: @setlist.isreprise, jamchartnote: @setlist.jamchartnote, position: @setlist.position, setnumber: @setlist.setnumber, show_id: @setlist.show_id, song_id: @setlist.song_id, tracktime: @setlist.tracktime, transition_id: @setlist.transition_id, uniqueid: @setlist.uniqueid } }
    assert_redirected_to setlist_url(@setlist)
  end

  test "should destroy setlist" do
    assert_difference("Setlist.count", -1) do
      delete setlist_url(@setlist)
    end

    assert_redirected_to setlists_url
  end
end
