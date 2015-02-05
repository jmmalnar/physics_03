require 'test_helper'

class TimeDilationControllerTest < ActionController::TestCase
  test "should get time_dilation" do
    get :time_dilation
    assert_response :success
  end

end
