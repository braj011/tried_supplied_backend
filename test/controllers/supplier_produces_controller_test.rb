require 'test_helper'

class SupplierProducesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier_produce = supplier_produces(:one)
  end

  test "should get index" do
    get supplier_produces_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_produce_url
    assert_response :success
  end

  test "should create supplier_produce" do
    assert_difference('SupplierProduce.count') do
      post supplier_produces_url, params: { supplier_produce: {  } }
    end

    assert_redirected_to supplier_produce_url(SupplierProduce.last)
  end

  test "should show supplier_produce" do
    get supplier_produce_url(@supplier_produce)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_produce_url(@supplier_produce)
    assert_response :success
  end

  test "should update supplier_produce" do
    patch supplier_produce_url(@supplier_produce), params: { supplier_produce: {  } }
    assert_redirected_to supplier_produce_url(@supplier_produce)
  end

  test "should destroy supplier_produce" do
    assert_difference('SupplierProduce.count', -1) do
      delete supplier_produce_url(@supplier_produce)
    end

    assert_redirected_to supplier_produces_url
  end
end
