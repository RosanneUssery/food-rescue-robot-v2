require "test_helper"

class CellCarriersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cell_carrier = cell_carriers(:one)
  end

  test "should get index" do
    get cell_carriers_url, as: :json
    assert_response :success
  end

  test "should create cell_carrier" do
    assert_difference('CellCarrier.count') do
      post cell_carriers_url, params: { cell_carrier: { format: @cell_carrier.format, name: @cell_carrier.name } }, as: :json
    end

    assert_response 201
  end

  test "should show cell_carrier" do
    get cell_carrier_url(@cell_carrier), as: :json
    assert_response :success
  end

  test "should update cell_carrier" do
    patch cell_carrier_url(@cell_carrier), params: { cell_carrier: { format: @cell_carrier.format, name: @cell_carrier.name } }, as: :json
    assert_response 200
  end

  test "should destroy cell_carrier" do
    assert_difference('CellCarrier.count', -1) do
      delete cell_carrier_url(@cell_carrier), as: :json
    end

    assert_response 204
  end
end
