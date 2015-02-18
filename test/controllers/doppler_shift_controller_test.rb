require 'test_helper'

class DopplerShiftControllerTest < ActionController::TestCase
  test "should get doppler_shift" do
    get :doppler_shift
    assert_response :success
  end

end
