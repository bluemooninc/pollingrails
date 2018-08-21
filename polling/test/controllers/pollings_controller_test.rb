require 'test_helper'

class PollingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polling = pollings(:one)
  end

  test "should get index" do
    get pollings_url, as: :json
    assert_response :success
  end

  test "should create polling" do
    assert_difference('Polling.count') do
      post pollings_url, params: { polling: { candidate_id: @polling.candidate_id } }, as: :json
    end

    assert_response 201
  end

  test "should show polling" do
    get polling_url(@polling), as: :json
    assert_response :success
  end

  test "should update polling" do
    patch polling_url(@polling), params: { polling: { candidate_id: @polling.candidate_id } }, as: :json
    assert_response 200
  end

  test "should destroy polling" do
    assert_difference('Polling.count', -1) do
      delete polling_url(@polling), as: :json
    end

    assert_response 204
  end
end
