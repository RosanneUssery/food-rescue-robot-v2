require "test_helper"

class AssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignment = assignments(:one)
  end

  test "should get index" do
    get assignments_url, as: :json
    assert_response :success
  end

  test "should create assignment" do
    assert_difference('Assignment.count') do
      post assignments_url, params: { assignment: { admin: @assignment.admin, region_id: @assignment.region_id, volunteer_id: @assignment.volunteer_id } }, as: :json
    end

    assert_response 201
  end

  test "should show assignment" do
    get assignment_url(@assignment), as: :json
    assert_response :success
  end

  test "should update assignment" do
    patch assignment_url(@assignment), params: { assignment: { admin: @assignment.admin, region_id: @assignment.region_id, volunteer_id: @assignment.volunteer_id } }, as: :json
    assert_response 200
  end

  test "should destroy assignment" do
    assert_difference('Assignment.count', -1) do
      delete assignment_url(@assignment), as: :json
    end

    assert_response 204
  end
end
