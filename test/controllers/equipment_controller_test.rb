require 'test_helper'

class EquipmentControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get equipment_index_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_url
    assert_response :success
  end

  test "should create equipment" do
    assert_difference('Equipment.count') do
      post equipment_index_url, params: { equipment: { admin_id: @equipment.admin_id, brand_id: @equipment.brand_id, calibration_date: @equipment.calibration_date, calibration_number: @equipment.calibration_number, inventory_number: @equipment.inventory_number, place_id: @equipment.place_id, serial_number: @equipment.serial_number, user_id: @equipment.user_id, verification_result: @equipment.verification_result } }
    end

    assert_redirected_to equipment_url(Equipment.last)
  end

  test "should show equipment" do
    get equipment_url(@equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_url(@equipment)
    assert_response :success
  end

  test "should update equipment" do
    patch equipment_url(@equipment), params: { equipment: { admin_id: @equipment.admin_id, brand_id: @equipment.brand_id, calibration_date: @equipment.calibration_date, calibration_number: @equipment.calibration_number, inventory_number: @equipment.inventory_number, place_id: @equipment.place_id, serial_number: @equipment.serial_number, user_id: @equipment.user_id, verification_result: @equipment.verification_result } }
    assert_redirected_to equipment_url(@equipment)
  end

  test "should destroy equipment" do
    assert_difference('Equipment.count', -1) do
      delete equipment_url(@equipment)
    end

    assert_redirected_to equipment_index_url
  end
end
