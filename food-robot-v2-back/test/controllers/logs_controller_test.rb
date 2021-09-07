require "test_helper"

class LogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log = logs(:one)
  end

  test "should get index" do
    get logs_url, as: :json
    assert_response :success
  end

  test "should create log" do
    assert_difference('Log.count') do
      post logs_url, params: { log: { complete: @log.complete, donor_id: @log.donor_id, flag_for_admin: @log.flag_for_admin, hours_spent: @log.hours_spent, notes: @log.notes, num_reminders: @log.num_reminders, num_volunteers: @log.num_volunteers, region_id: @log.region_id, scale_type_id: @log.scale_type_id, schedule_chain_id: @log.schedule_chain_id, transport_type_id: @log.transport_type_id, weight_unit: @log.weight_unit, when: @log.when, why_zero: @log.why_zero } }, as: :json
    end

    assert_response 201
  end

  test "should show log" do
    get log_url(@log), as: :json
    assert_response :success
  end

  test "should update log" do
    patch log_url(@log), params: { log: { complete: @log.complete, donor_id: @log.donor_id, flag_for_admin: @log.flag_for_admin, hours_spent: @log.hours_spent, notes: @log.notes, num_reminders: @log.num_reminders, num_volunteers: @log.num_volunteers, region_id: @log.region_id, scale_type_id: @log.scale_type_id, schedule_chain_id: @log.schedule_chain_id, transport_type_id: @log.transport_type_id, weight_unit: @log.weight_unit, when: @log.when, why_zero: @log.why_zero } }, as: :json
    assert_response 200
  end

  test "should destroy log" do
    assert_difference('Log.count', -1) do
      delete log_url(@log), as: :json
    end

    assert_response 204
  end
end
