require "test_helper"

class VideoGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get video_games_index_url
    assert_response :success
  end

  test "should get show" do
    get video_games_show_url
    assert_response :success
  end
end
