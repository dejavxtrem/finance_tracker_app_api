require 'test_helper'

class BillexpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billexpense = billexpenses(:one)
  end

  test "should get index" do
    get billexpenses_url, as: :json
    assert_response :success
  end

  test "should create billexpense" do
    assert_difference('Billexpense.count') do
      post billexpenses_url, params: { billexpense: { amount: @billexpense.amount, billtype: @billexpense.billtype, companyname: @billexpense.companyname, due_date: @billexpense.due_date } }, as: :json
    end

    assert_response 201
  end

  test "should show billexpense" do
    get billexpense_url(@billexpense), as: :json
    assert_response :success
  end

  test "should update billexpense" do
    patch billexpense_url(@billexpense), params: { billexpense: { amount: @billexpense.amount, billtype: @billexpense.billtype, companyname: @billexpense.companyname, due_date: @billexpense.due_date } }, as: :json
    assert_response 200
  end

  test "should destroy billexpense" do
    assert_difference('Billexpense.count', -1) do
      delete billexpense_url(@billexpense), as: :json
    end

    assert_response 204
  end
end
