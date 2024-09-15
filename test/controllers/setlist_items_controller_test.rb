require "test_helper"

class SetlistItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setlist_item = setlist_items(:one)
  end

  test "should get index" do
    get setlist_items_url
    assert_response :success
  end

  test "should get new" do
    get new_setlist_item_url
    assert_response :success
  end

  test "should create setlist_item" do
    assert_difference("SetlistItem.count") do
      post setlist_items_url, params: { setlist_item: { position: @setlist_item.position, setlist_id: @setlist_item.setlist_id, song_id: @setlist_item.song_id } }
    end

    assert_redirected_to setlist_item_url(SetlistItem.last)
  end

  test "should show setlist_item" do
    get setlist_item_url(@setlist_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_setlist_item_url(@setlist_item)
    assert_response :success
  end

  test "should update setlist_item" do
    patch setlist_item_url(@setlist_item), params: { setlist_item: { position: @setlist_item.position, setlist_id: @setlist_item.setlist_id, song_id: @setlist_item.song_id } }
    assert_redirected_to setlist_item_url(@setlist_item)
  end

  test "should destroy setlist_item" do
    assert_difference("SetlistItem.count", -1) do
      delete setlist_item_url(@setlist_item)
    end

    assert_redirected_to setlist_items_url
  end
end
