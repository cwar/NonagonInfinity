require "test_helper"

class BandmembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bandmember = bandmembers(:one)
  end

  test "should get index" do
    get bandmembers_url
    assert_response :success
  end

  test "should get new" do
    get new_bandmember_url
    assert_response :success
  end

  test "should create bandmember" do
    assert_difference("Bandmember.count") do
      post bandmembers_url, params: { bandmember: { artist_id: @bandmember.artist_id, people_id: @bandmember.people_id, role: @bandmember.role } }
    end

    assert_redirected_to bandmember_url(Bandmember.last)
  end

  test "should show bandmember" do
    get bandmember_url(@bandmember)
    assert_response :success
  end

  test "should get edit" do
    get edit_bandmember_url(@bandmember)
    assert_response :success
  end

  test "should update bandmember" do
    patch bandmember_url(@bandmember), params: { bandmember: { artist_id: @bandmember.artist_id, people_id: @bandmember.people_id, role: @bandmember.role } }
    assert_redirected_to bandmember_url(@bandmember)
  end

  test "should destroy bandmember" do
    assert_difference("Bandmember.count", -1) do
      delete bandmember_url(@bandmember)
    end

    assert_redirected_to bandmembers_url
  end
end
