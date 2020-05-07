require 'test_helper'

class CreditcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creditcard = creditcards(:one)
  end

  test "should get index" do
    get creditcards_url, as: :json
    assert_response :success
  end

  test "should create creditcard" do
    assert_difference('Creditcard.count') do
      post creditcards_url, params: { creditcard: { amount: @creditcard.amount, creditcard_company: @creditcard.creditcard_company, creditcard_number: @creditcard.creditcard_number, merchant_name: @creditcard.merchant_name } }, as: :json
    end

    assert_response 201
  end

  test "should show creditcard" do
    get creditcard_url(@creditcard), as: :json
    assert_response :success
  end

  test "should update creditcard" do
    patch creditcard_url(@creditcard), params: { creditcard: { amount: @creditcard.amount, creditcard_company: @creditcard.creditcard_company, creditcard_number: @creditcard.creditcard_number, merchant_name: @creditcard.merchant_name } }, as: :json
    assert_response 200
  end

  test "should destroy creditcard" do
    assert_difference('Creditcard.count', -1) do
      delete creditcard_url(@creditcard), as: :json
    end

    assert_response 204
  end
end
