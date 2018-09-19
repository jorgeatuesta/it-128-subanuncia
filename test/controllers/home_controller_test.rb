require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get init" do
    get home_init_url
    assert_response :success
  end

end
