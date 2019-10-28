require 'test_helper'

class MedicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medic = medics(:one)
  end

  test "should get index" do
    get medics_url
    assert_response :success
  end

  test "should get new" do
    get new_medic_url
    assert_response :success
  end

  test "should create medic" do
    assert_difference('Medic.count') do
      post medics_url, params: { medic: { name: @medic.name, rut: @medic.rut, speciality: @medic.speciality } }
    end

    assert_redirected_to medic_url(Medic.last)
  end

  test "should show medic" do
    get medic_url(@medic)
    assert_response :success
  end

  test "should get edit" do
    get edit_medic_url(@medic)
    assert_response :success
  end

  test "should update medic" do
    patch medic_url(@medic), params: { medic: { name: @medic.name, rut: @medic.rut, speciality: @medic.speciality } }
    assert_redirected_to medic_url(@medic)
  end

  test "should destroy medic" do
    assert_difference('Medic.count', -1) do
      delete medic_url(@medic)
    end

    assert_redirected_to medics_url
  end
end
