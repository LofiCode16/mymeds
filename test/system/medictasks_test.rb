require "application_system_test_case"

class MedictasksTest < ApplicationSystemTestCase
  setup do
    @medictask = medictasks(:one)
  end

  test "visiting the index" do
    visit medictasks_url
    assert_selector "h1", text: "Medictasks"
  end

  test "creating a Medictask" do
    visit medictasks_url
    click_on "New Medictask"

    fill_in "Content", with: @medictask.content
    fill_in "Date", with: @medictask.date
    check "Done" if @medictask.done
    fill_in "Medic", with: @medictask.medic
    fill_in "Speciality", with: @medictask.speciality
    fill_in "Title", with: @medictask.title
    fill_in "User", with: @medictask.user_id
    click_on "Create Medictask"

    assert_text "Medictask was successfully created"
    click_on "Back"
  end

  test "updating a Medictask" do
    visit medictasks_url
    click_on "Edit", match: :first

    fill_in "Content", with: @medictask.content
    fill_in "Date", with: @medictask.date
    check "Done" if @medictask.done
    fill_in "Medic", with: @medictask.medic
    fill_in "Speciality", with: @medictask.speciality
    fill_in "Title", with: @medictask.title
    fill_in "User", with: @medictask.user_id
    click_on "Update Medictask"

    assert_text "Medictask was successfully updated"
    click_on "Back"
  end

  test "destroying a Medictask" do
    visit medictasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medictask was successfully destroyed"
  end
end
