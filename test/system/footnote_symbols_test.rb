require "application_system_test_case"

class FootnoteSymbolsTest < ApplicationSystemTestCase
  setup do
    @footnote_symbol = footnote_symbols(:one)
  end

  test "visiting the index" do
    visit footnote_symbols_url
    assert_selector "h1", text: "Footnote symbols"
  end

  test "should create footnote symbol" do
    visit footnote_symbols_url
    click_on "New footnote symbol"

    fill_in "Footnote number", with: @footnote_symbol.footnote_number
    fill_in "Sane value", with: @footnote_symbol.sane_value
    fill_in "Symbol", with: @footnote_symbol.symbol
    click_on "Create Footnote symbol"

    assert_text "Footnote symbol was successfully created"
    click_on "Back"
  end

  test "should update Footnote symbol" do
    visit footnote_symbol_url(@footnote_symbol)
    click_on "Edit this footnote symbol", match: :first

    fill_in "Footnote number", with: @footnote_symbol.footnote_number
    fill_in "Sane value", with: @footnote_symbol.sane_value
    fill_in "Symbol", with: @footnote_symbol.symbol
    click_on "Update Footnote symbol"

    assert_text "Footnote symbol was successfully updated"
    click_on "Back"
  end

  test "should destroy Footnote symbol" do
    visit footnote_symbol_url(@footnote_symbol)
    click_on "Destroy this footnote symbol", match: :first

    assert_text "Footnote symbol was successfully destroyed"
  end
end
