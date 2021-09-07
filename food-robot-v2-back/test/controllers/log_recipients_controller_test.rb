require "test_helper"

class LogRecipientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log_recipient = log_recipients(:one)
  end

  test "should get index" do
    get log_recipients_url, as: :json
    assert_response :success
  end

  test "should create log_recipient" do
    assert_difference('LogRecipient.count') do
      post log_recipients_url, params: { log_recipient: { log_id: @log_recipient.log_id, recipient_id: @log_recipient.recipient_id } }, as: :json
    end

    assert_response 201
  end

  test "should show log_recipient" do
    get log_recipient_url(@log_recipient), as: :json
    assert_response :success
  end

  test "should update log_recipient" do
    patch log_recipient_url(@log_recipient), params: { log_recipient: { log_id: @log_recipient.log_id, recipient_id: @log_recipient.recipient_id } }, as: :json
    assert_response 200
  end

  test "should destroy log_recipient" do
    assert_difference('LogRecipient.count', -1) do
      delete log_recipient_url(@log_recipient), as: :json
    end

    assert_response 204
  end
end
