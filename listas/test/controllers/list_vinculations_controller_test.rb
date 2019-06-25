require 'test_helper'

class ListVinculationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_vinculation = list_vinculations(:one)
  end

  test "should get index" do
    get list_vinculations_url, as: :json
    assert_response :success
  end

  test "should create list_vinculation" do
    assert_difference('ListVinculation.count') do
      post list_vinculations_url, params: { list_vinculation: { list_id: @list_vinculation.list_id, user_id: @list_vinculation.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show list_vinculation" do
    get list_vinculation_url(@list_vinculation), as: :json
    assert_response :success
  end

  test "should update list_vinculation" do
    patch list_vinculation_url(@list_vinculation), params: { list_vinculation: { list_id: @list_vinculation.list_id, user_id: @list_vinculation.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy list_vinculation" do
    assert_difference('ListVinculation.count', -1) do
      delete list_vinculation_url(@list_vinculation), as: :json
    end

    assert_response 204
  end
end
