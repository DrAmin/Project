require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  test "should get cars" do
    get :cars
    assert_response :success
  end

end
