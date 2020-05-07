require 'test_helper'

class BankinformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bankinformation = bankinformations(:one)
  end

  test "should get index" do
    get bankinformations_url, as: :json
    assert_response :success
  end

  test "should create bankinformation" do
    assert_difference('Bankinformation.count') do
      post bankinformations_url, params: { bankinformation: { accountnumber: @bankinformation.accountnumber, bankiban: @bankinformation.bankiban, bankname: @bankinformation.bankname, routingnumber: @bankinformation.routingnumber } }, as: :json
    end

    assert_response 201
  end

  test "should show bankinformation" do
    get bankinformation_url(@bankinformation), as: :json
    assert_response :success
  end

  test "should update bankinformation" do
    patch bankinformation_url(@bankinformation), params: { bankinformation: { accountnumber: @bankinformation.accountnumber, bankiban: @bankinformation.bankiban, bankname: @bankinformation.bankname, routingnumber: @bankinformation.routingnumber } }, as: :json
    assert_response 200
  end

  test "should destroy bankinformation" do
    assert_difference('Bankinformation.count', -1) do
      delete bankinformation_url(@bankinformation), as: :json
    end

    assert_response 204
  end
end
