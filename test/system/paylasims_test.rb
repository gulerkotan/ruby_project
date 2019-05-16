require "application_system_test_case"

class PaylasimsTest < ApplicationSystemTestCase
  setup do
    @paylasim = paylasims(:one)
  end

  test "visiting the index" do
    visit paylasims_url
    assert_selector "h1", text: "Paylasims"
  end

  test "creating a Paylasim" do
    visit paylasims_url
    click_on "New Paylasim"

    fill_in "Baslik", with: @paylasim.baslik
    fill_in "Icerik", with: @paylasim.icerik
    click_on "Create Paylasim"

    assert_text "Paylasim was successfully created"
    click_on "Back"
  end

  test "updating a Paylasim" do
    visit paylasims_url
    click_on "Edit", match: :first

    fill_in "Baslik", with: @paylasim.baslik
    fill_in "Icerik", with: @paylasim.icerik
    click_on "Update Paylasim"

    assert_text "Paylasim was successfully updated"
    click_on "Back"
  end

  test "destroying a Paylasim" do
    visit paylasims_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paylasim was successfully destroyed"
  end
end
