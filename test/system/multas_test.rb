require "application_system_test_case"

class MultasTest < ApplicationSystemTestCase
  setup do
    @multa = multas(:one)
  end

  test "visiting the index" do
    visit multas_url
    assert_selector "h1", text: "Multas"
  end

  test "creating a Multa" do
    visit multas_url
    click_on "New Multa"

    fill_in "Prestamo", with: @multa.Prestamo_id
    fill_in "Estado", with: @multa.estado
    fill_in "Fecha", with: @multa.fecha
    fill_in "Valor", with: @multa.valor
    click_on "Create Multa"

    assert_text "Multa was successfully created"
    click_on "Back"
  end

  test "updating a Multa" do
    visit multas_url
    click_on "Edit", match: :first

    fill_in "Prestamo", with: @multa.Prestamo_id
    fill_in "Estado", with: @multa.estado
    fill_in "Fecha", with: @multa.fecha
    fill_in "Valor", with: @multa.valor
    click_on "Update Multa"

    assert_text "Multa was successfully updated"
    click_on "Back"
  end

  test "destroying a Multa" do
    visit multas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Multa was successfully destroyed"
  end
end
