require "test_helper"

class ScheduleChainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_chain = schedule_chains(:one)
  end

  test "should get index" do
    get schedule_chains_url, as: :json
    assert_response :success
  end

  test "should create schedule_chain" do
    assert_difference('ScheduleChain.count') do
      post schedule_chains_url, params: { schedule_chain: { active: @schedule_chain.active, admin_notes: @schedule_chain.admin_notes, backup: @schedule_chain.backup, day_of_week: @schedule_chain.day_of_week, detailed_date: @schedule_chain.detailed_date, detailed_start_time: @schedule_chain.detailed_start_time, detailed_stop_time: @schedule_chain.detailed_stop_time, difficulty_rating: @schedule_chain.difficulty_rating, expected_weight: @schedule_chain.expected_weight, frequency: @schedule_chain.frequency, hilliness: @schedule_chain.hilliness, irregular: @schedule_chain.irregular, num_volunteers: @schedule_chain.num_volunteers, public_notes: @schedule_chain.public_notes, region_id: @schedule_chain.region_id, scale_type_id: @schedule_chain.scale_type_id, temporary: @schedule_chain.temporary, transport_type_id: @schedule_chain.transport_type_id } }, as: :json
    end

    assert_response 201
  end

  test "should show schedule_chain" do
    get schedule_chain_url(@schedule_chain), as: :json
    assert_response :success
  end

  test "should update schedule_chain" do
    patch schedule_chain_url(@schedule_chain), params: { schedule_chain: { active: @schedule_chain.active, admin_notes: @schedule_chain.admin_notes, backup: @schedule_chain.backup, day_of_week: @schedule_chain.day_of_week, detailed_date: @schedule_chain.detailed_date, detailed_start_time: @schedule_chain.detailed_start_time, detailed_stop_time: @schedule_chain.detailed_stop_time, difficulty_rating: @schedule_chain.difficulty_rating, expected_weight: @schedule_chain.expected_weight, frequency: @schedule_chain.frequency, hilliness: @schedule_chain.hilliness, irregular: @schedule_chain.irregular, num_volunteers: @schedule_chain.num_volunteers, public_notes: @schedule_chain.public_notes, region_id: @schedule_chain.region_id, scale_type_id: @schedule_chain.scale_type_id, temporary: @schedule_chain.temporary, transport_type_id: @schedule_chain.transport_type_id } }, as: :json
    assert_response 200
  end

  test "should destroy schedule_chain" do
    assert_difference('ScheduleChain.count', -1) do
      delete schedule_chain_url(@schedule_chain), as: :json
    end

    assert_response 204
  end
end
