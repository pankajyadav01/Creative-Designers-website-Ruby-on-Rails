require 'test_helper'

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get checkout" do
    get payments_checkout_url
    assert_response :success
  end

end
