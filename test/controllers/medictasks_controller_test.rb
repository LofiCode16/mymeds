require 'test_helper'

class MedictasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medictask = medictasks(:one)
  end

  test "should get index" do
    get medictasks_url
    assert_response :success
  end

  test "should get new" do
    get new_medictask_url
    assert_response :success
  end

  test "should create medictask" do
    assert_difference('Medictask.count') do
      post medictasks_url, params: { medictask: { content: @medictask.content, date: @medictask.date, done: @medictask.done, medic: @medictask.medic, speciality: @medictask.speciality, title: @medictask.title, user_id: @medictask.user_id } }
    end

    assert_redirected_to medictask_url(Medictask.last)
  end

  test "should show medictask" do
    get medictask_url(@medictask)
    assert_response :success
  end

  test "should get edit" do
    get edit_medictask_url(@medictask)
    assert_response :success
  end

  test "should update medictask" do
    patch medictask_url(@medictask), params: { medictask: { content: @medictask.content, date: @medictask.date, done: @medictask.done, medic: @medictask.medic, speciality: @medictask.speciality, title: @medictask.title, user_id: @medictask.user_id } }
    assert_redirected_to medictask_url(@medictask)
  end

  test "should destroy medictask" do
    assert_difference('Medictask.count', -1) do
      delete medictask_url(@medictask)
    end

    assert_redirected_to medictasks_url
  end
end
