require "application_system_test_case"

class SupplierProducesTest < ApplicationSystemTestCase
  setup do
    @supplier_produce = supplier_produces(:one)
  end

  test "visiting the index" do
    visit supplier_produces_url
    assert_selector "h1", text: "Supplier Produces"
  end

  test "creating a Supplier produce" do
    visit supplier_produces_url
    click_on "New Supplier Produce"

    click_on "Create Supplier produce"

    assert_text "Supplier produce was successfully created"
    click_on "Back"
  end

  test "updating a Supplier produce" do
    visit supplier_produces_url
    click_on "Edit", match: :first

    click_on "Update Supplier produce"

    assert_text "Supplier produce was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplier produce" do
    visit supplier_produces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplier produce was successfully destroyed"
  end
end
