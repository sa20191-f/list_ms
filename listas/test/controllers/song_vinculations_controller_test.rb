require 'test_helper'

class SongVinculationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song_vinculation = song_vinculations(:one)
  end

  test "should get index" do
    get song_vinculations_url, as: :json
    assert_response :success
  end

  test "should create song_vinculation" do
    assert_difference('SongVinculation.count') do
      post song_vinculations_url, params: { song_vinculation: { list_id: @song_vinculation.list_id, song_id: @song_vinculation.song_id } }, as: :json
    end

    assert_response 201
  end

  test "should show song_vinculation" do
    get song_vinculation_url(@song_vinculation), as: :json
    assert_response :success
  end

  test "should update song_vinculation" do
    patch song_vinculation_url(@song_vinculation), params: { song_vinculation: { list_id: @song_vinculation.list_id, song_id: @song_vinculation.song_id } }, as: :json
    assert_response 200
  end

  test "should destroy song_vinculation" do
    assert_difference('SongVinculation.count', -1) do
      delete song_vinculation_url(@song_vinculation), as: :json
    end

    assert_response 204
  end
end
