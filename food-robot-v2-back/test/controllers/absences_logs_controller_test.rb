require "test_helper"

class AbsencesLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @absences_log = absences_logs(:one)
  end

  test "should get index" do
    get absences_logs_url, as: :json
    assert_response :success
  end

  test "should create absences_log" do
    assert_difference('AbsencesLog.count') do
      post absences_logs_url, params: { absences_log: { absence_id: @absences_log.absence_id, log_id: @absences_log.log_id } }, as: :json
    end

    assert_response 201
  end

  test "should show absences_log" do
    get absences_log_url(@absences_log), as: :json
    assert_response :success
  end

  test "should update absences_log" do
    patch absences_log_url(@absences_log), params: { absences_log: { absence_id: @absences_log.absence_id, log_id: @absences_log.log_id } }, as: :json
    assert_response 200
  end

  test "should destroy absences_log" do
    assert_difference('AbsencesLog.count', -1) do
      delete absences_log_url(@absences_log), as: :json
    end

    assert_response 204
  end
end
