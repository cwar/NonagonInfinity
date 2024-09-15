require "test_helper"

class FootnoteSymbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @footnote_symbol = footnote_symbols(:one)
  end

  test "should get index" do
    get footnote_symbols_url
    assert_response :success
  end

  test "should get new" do
    get new_footnote_symbol_url
    assert_response :success
  end

  test "should create footnote_symbol" do
    assert_difference("FootnoteSymbol.count") do
      post footnote_symbols_url, params: { footnote_symbol: { footnote_number: @footnote_symbol.footnote_number, sane_value: @footnote_symbol.sane_value, symbol: @footnote_symbol.symbol } }
    end

    assert_redirected_to footnote_symbol_url(FootnoteSymbol.last)
  end

  test "should show footnote_symbol" do
    get footnote_symbol_url(@footnote_symbol)
    assert_response :success
  end

  test "should get edit" do
    get edit_footnote_symbol_url(@footnote_symbol)
    assert_response :success
  end

  test "should update footnote_symbol" do
    patch footnote_symbol_url(@footnote_symbol), params: { footnote_symbol: { footnote_number: @footnote_symbol.footnote_number, sane_value: @footnote_symbol.sane_value, symbol: @footnote_symbol.symbol } }
    assert_redirected_to footnote_symbol_url(@footnote_symbol)
  end

  test "should destroy footnote_symbol" do
    assert_difference("FootnoteSymbol.count", -1) do
      delete footnote_symbol_url(@footnote_symbol)
    end

    assert_redirected_to footnote_symbols_url
  end
end
